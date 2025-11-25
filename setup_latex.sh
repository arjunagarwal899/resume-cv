#!/bin/bash

# LaTeX Setup Script for Arjun's CV
# This script installs all necessary LaTeX packages required to build cv.tex
# Works on macOS and Linux systems

set -e  # Exit on error

echo "=================================="
echo "LaTeX Environment Setup for CV"
echo "=================================="
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored messages
print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

print_info() {
    echo -e "${YELLOW}➜ $1${NC}"
}

# Detect OS
OS="$(uname -s)"
case "${OS}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    *)          MACHINE="UNKNOWN:${OS}"
esac

echo "Detected OS: ${MACHINE}"
echo ""

# Check if LaTeX is installed
if command -v pdflatex &> /dev/null; then
    print_success "LaTeX distribution found"
    LATEX_VERSION=$(pdflatex --version | head -n 1)
    echo "  ${LATEX_VERSION}"
else
    print_error "LaTeX distribution not found!"
    echo ""
    if [ "${MACHINE}" = "Mac" ]; then
        print_info "To install LaTeX on macOS, run:"
        echo "  brew install --cask basictex"
        echo "  or"
        echo "  brew install --cask mactex  (full installation, ~4GB)"
    elif [ "${MACHINE}" = "Linux" ]; then
        print_info "To install LaTeX on Linux, run:"
        echo "  sudo apt-get install texlive-latex-base  (Ubuntu/Debian)"
        echo "  or"
        echo "  sudo yum install texlive  (RedHat/CentOS)"
    fi
    exit 1
fi

# Check if tlmgr is available
if ! command -v tlmgr &> /dev/null; then
    print_error "tlmgr (TeX Live Manager) not found!"
    exit 1
fi

print_success "tlmgr found"
echo ""

# Update tlmgr itself
print_info "Updating tlmgr..."
if [ "${MACHINE}" = "Mac" ]; then
    sudo tlmgr update --self || print_error "Failed to update tlmgr (might need sudo)"
else
    tlmgr update --self 2>/dev/null || sudo tlmgr update --self || print_error "Failed to update tlmgr"
fi
print_success "tlmgr updated"
echo ""

# List of required LaTeX packages
PACKAGES=(
    "latexmk"           # Build automation tool
    "geometry"          # Page layout
    "fontawesome5"      # Icon fonts
    "ragged2e"          # Text alignment
    "xcolor"            # Colors
    "pgf"               # TikZ/PGF graphics library
    "tcolorbox"         # Colored boxes
    "tikzfill"          # TikZ fill extension (required by tcolorbox)
    "enumitem"          # List customization
    "etoolbox"          # Programming tools
    "dashrule"          # Dashed rules
    "ifmtarg"           # If empty argument checking (required by dashrule)
    "multirow"          # Table multirow
    "changepage"        # Page layout changes
    "marginfix"         # Margin notes
    "hyperref"          # Hyperlinks
    "lato"              # Lato font
    "fontaxes"          # Font axis selection (required by lato)
    "textgreek"         # Greek symbols in text mode
    "cbfonts"           # Greek fonts
    "cbfonts-fd"        # Greek font definitions
    "tfrupee"           # Indian Rupee symbol
    "collection-fontsrecommended"  # Recommended fonts
    "collection-latexrecommended"   # Recommended LaTeX packages (includes graphicx, array, etc.)
)

print_info "Installing required LaTeX packages..."
echo ""

FAILED_PACKAGES=()

for package in "${PACKAGES[@]}"; do
    print_info "Installing ${package}..."
    if [ "${MACHINE}" = "Mac" ]; then
        if sudo tlmgr install "${package}" 2>&1 | grep -q "already installed"; then
            print_success "${package} already installed"
        else
            if sudo tlmgr install "${package}" &> /dev/null; then
                print_success "${package} installed"
            else
                print_error "Failed to install ${package}"
                FAILED_PACKAGES+=("${package}")
            fi
        fi
    else
        if tlmgr install "${package}" 2>&1 | grep -q "already installed"; then
            print_success "${package} already installed"
        else
            if tlmgr install "${package}" &> /dev/null || sudo tlmgr install "${package}" &> /dev/null; then
                print_success "${package} installed"
            else
                print_error "Failed to install ${package}"
                FAILED_PACKAGES+=("${package}")
            fi
        fi
    fi
done

echo ""

# Update font cache
print_info "Updating font cache..."
if [ "${MACHINE}" = "Mac" ]; then
    sudo mktexlsr || print_error "Failed to update font cache"
else
    mktexlsr 2>/dev/null || sudo mktexlsr || print_error "Failed to update font cache"
fi
print_success "Font cache updated"
echo ""

# Summary
echo "=================================="
echo "Setup Summary"
echo "=================================="
echo ""

if [ ${#FAILED_PACKAGES[@]} -eq 0 ]; then
    print_success "All packages installed successfully!"
    echo ""
    print_info "You can now build the CV with:"
    echo "  latexmk -pdf -synctex=1 -interaction=nonstopmode cv.tex"
    echo ""
    print_info "Or use your LaTeX editor (VS Code with LaTeX Workshop extension)"
else
    print_error "Some packages failed to install:"
    for package in "${FAILED_PACKAGES[@]}"; do
        echo "  - ${package}"
    done
    echo ""
    print_info "Try installing failed packages manually:"
    echo "  sudo tlmgr install <package-name>"
fi

echo ""
print_info "Adding LaTeX binaries to PATH..."
if [ "${MACHINE}" = "Mac" ]; then
    if ! grep -q "/Library/TeX/texbin" ~/.zshrc 2>/dev/null; then
        echo "" >> ~/.zshrc
        echo "# Add LaTeX binaries to PATH" >> ~/.zshrc
        echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zshrc
        print_success "Added LaTeX to ~/.zshrc"
        print_info "Run 'source ~/.zshrc' or restart your terminal"
    else
        print_success "LaTeX already in PATH configuration"
    fi
fi

echo ""
print_success "Setup complete!"
