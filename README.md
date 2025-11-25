# Arjun Agarwal's CV

My professional CV/Resume built with LaTeX.

## Prerequisites

### macOS
```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install BasicTeX (smaller, ~100MB)
brew install --cask basictex

# OR install full MacTeX (recommended, ~4GB)
brew install --cask mactex
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install texlive-latex-base texlive-latex-extra
```

### Linux (RedHat/CentOS/Fedora)
```bash
sudo yum install texlive texlive-latex
```

## Setup

After installing a LaTeX distribution, run the setup script to install all required packages:

```bash
./setup_latex.sh
```

This script will:
- Verify LaTeX installation
- Update TeX Live Manager (tlmgr)
- Install all required LaTeX packages
- Update font cache
- Add LaTeX binaries to your PATH (macOS)

## Building the CV

### Using LaTeX Workshop (VS Code)

1. Install the [LaTeX Workshop extension](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
2. Open `resume-cv.tex`
3. Press `Cmd+Option+B` (macOS) or `Ctrl+Alt+B` (Linux/Windows) to build
4. The PDF will be automatically generated and can be previewed in VS Code

### Using Command Line

```bash
# Build the CV
latexmk -pdf -synctex=1 -interaction=nonstopmode resume-cv.tex

# Clean auxiliary files
latexmk -c

# Clean all generated files (including PDF)
latexmk -C
```

## Project Structure

```
.
├── LICENSE
├── README.md
├── resume-cv.tex               # Main document that stitches everything together
├── setup_latex.sh              # Setup script for LaTeX packages
├── src/                        # Reusable layout + section helpers
│   ├── base.cls
│   ├── work_experience.cls
│   ├── education.cls
│   ├── publications.cls
│   ├── honors_awards.cls
│   ├── skills.cls
│   ├── certifications.cls
│   ├── research_experience.cls
│   ├── teaching_experience.cls
│   └── positions_of_responsibility.cls
└── rsrc/                       # Data-only section content
    ├── personal_info.tex
    ├── work_experience.tex
    ├── education.tex
    ├── patents_publications.tex
    ├── honors_awards.tex
    ├── technical_skills.tex
    ├── certifications.tex
    ├── research_experience.tex
    ├── teaching_experience.tex
    └── positions_of_responsibility.tex
```

## Required LaTeX Packages

The CV uses the following LaTeX packages (automatically installed by `setup_latex.sh`):

- **latexmk** - Build automation
- **geometry** - Page layout customization
- **fontawesome5** - Icon fonts
- **ragged2e** - Advanced text alignment
- **xcolor** - Color support
- **tikz/pgf** - Graphics and drawing
- **tcolorbox** - Colored boxes
- **enumitem** - List customization
- **hyperref** - Clickable links
- **lato** - Lato font family
- **textgreek** - Greek symbols
- **tfrupee** - Indian Rupee symbol
- And more...

## Customization

If you want to use this as a template for your own CV:

### Personal Information & Sections

All resume content now lives inside `rsrc/*.tex`. Update the relevant snippet and rebuild:

| Section | File |
| --- | --- |
| Personal info & header | `rsrc/personal_info.tex` |
| Work experience | `rsrc/work_experience.tex` |
| Education | `rsrc/education.tex` |
| Patents & publications | `rsrc/patents_publications.tex` |
| Research experience | `rsrc/research_experience.tex` |
| Teaching experience | `rsrc/teaching_experience.tex` |
| Honors & awards | `rsrc/honors_awards.tex` |
| Technical skills | `rsrc/technical_skills.tex` |
| Certifications | `rsrc/certifications.tex` |
| Positions of responsibility | `rsrc/positions_of_responsibility.tex` |

Example (`rsrc/personal_info.tex`):

```latex
\name{Your Name}
	agline{Your Tagline}

\personalinfo{
    \email{your.email@example.com}\\
    \phone{+XX XXXXX XXXXX}\\
    \linkedin{your-linkedin}
}
```

### Colors

Customize colors by editing the definitions in `src/base.cls`:

```latex
\definecolor{Navy}{HTML}{000080}
\definecolor{LightGrey}{HTML}{6E6E6E}
\definecolor{Black}{HTML}{000000}

\colorlet{accent}{Navy}
\colorlet{emphasis}{Navy}
\colorlet{dividers}{LightGrey}
```

### Layout

Adjust page margins in `resume-cv.tex` (or override defaults inside `src/base.cls`):

```latex
\geometry{left=1cm,right=1cm,top=1.15cm,bottom=1.15cm}
```

## Troubleshooting

### "latexmk not found"

Make sure the LaTeX binaries are in your PATH:

**macOS:**
```bash
export PATH="/Library/TeX/texbin:$PATH"
# Or restart your terminal after running setup_latex.sh
```

**Linux:**
The PATH should be automatically configured after installation.

### Missing packages

If you encounter missing package errors, install them manually:

```bash
sudo tlmgr install <package-name>
```

### Permission errors

On macOS, you might need to use `sudo` for tlmgr commands:

```bash
sudo tlmgr install <package-name>
```

### Font cache issues

If fonts are not rendering correctly:

```bash
sudo mktexlsr
```

## License

See [LICENSE](LICENSE) file for details.

## About

This is my personal CV repository. Feel free to fork and adapt the structure/template for your own use!
