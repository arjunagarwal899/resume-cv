\ProvidesClass{base}[Base resume class]
\NeedsTeXFormat{LaTeX2e}[1995/12/01]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Forward all unhandled options to extarticle
\ProcessOptions\relax % Process any class options that were provided
\LoadClass{extarticle} % Base this class on the extarticle document class

% Imports
\RequirePackage[margin=2cm]{geometry} % Control document margins for compact layout
\RequirePackage[newcommands]{ragged2e} % Improved ragged alignment commands with newcommands support
\RequirePackage[skins]{tcolorbox} % Styled colored boxes for highlighted sections
\RequirePackage[table]{xcolor} % Extended color handling including table support
\RequirePackage{array} % Enhanced array and tabular column definitions
\RequirePackage{changepage} % Temporarily adjust margins and page widths
\RequirePackage{dashrule} % Draw dashed rules for dividers
\RequirePackage{enumitem} % Fine-tune list spacing and labels
\RequirePackage{etoolbox} % Provide robust programming utilities and conditionals
\RequirePackage{fontawesome5} % Provide Font Awesome icons
\RequirePackage{graphicx} % Allow inclusion and scaling of graphics
\RequirePackage{marginfix} % Improve placement of margin notes
\RequirePackage{multicol} % Support multi-column content blocks
\RequirePackage{multirow,tabularx} % Advanced table commands for spanning rows and flexible width columns
\RequirePackage{tikz} % Enable creating vector graphics programmatically
\usetikzlibrary{arrows} % Add arrow shapes to TikZ for diagrams

% Define fullwidth environment for content spanning entire page width
\newenvironment{fullwidth}{
    \begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
  {\end{adjustwidth}}

% Global list spacing/indentation settings
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{itemsep=3pt, topsep=0pt, parsep=0pt, partopsep=0pt, label=$\bullet$}
\setlist[enumerate]{itemsep=0pt, topsep=2pt, parsep=0pt, partopsep=0pt, label=$\bullet$}  % Also used in bulleted lists
\setlength{\tabcolsep}{0pt}
\setlength{\parindent}{0pt}
\setlength{\columnseprule}{1pt}
\setlength{\columnsep}{1cm}


% Define colours to be used throughout the document
\definecolor{Navy}{HTML}{000080} % Color used for headings and emphasized text
\definecolor{Black}{HTML}{000000} % Standard black color
\definecolor{LightGrey}{HTML}{6E6E6E} % For less prominent text


% Commands to use different types of colours
\newcommand{\accentColor}[1]{{\color{Navy}#1}}
\newcommand{\bodyColor}[1]{{\color{Black}#1}}
\newcommand{\bodyLightColor}[1]{{\color{LightGrey}#1}}
\colorlet{dividers}{LightGrey}

% Define font sizes for different text types
\newcommand{\nameSize}[1]{{\Huge#1}}  % separate size for my name
\newcommand{\headingSize}[1]{{\Large#1}}
\newcommand{\subHeadingSize}[1]{{\large#1}}
\newcommand{\prominentTextSize}[1]{{\normalsize#1}}
\newcommand{\bodyTextSize}[1]{{\small#1}}
\newcommand{\accessoryTextSize}[1]{{\footnotesize#1}}

% Define dividers for separations
\newcommand{\divider}{
    \vspace{-9pt}
    \textcolor{dividers!50}{\hdashrule{\linewidth}{0.6pt}{0.5ex}}\smallskip
}

\newcommand{\headingDivider}{\accentColor{\rule{\linewidth}{2pt}}}

%% Commands used throughout
% Headings
\newcommand{\cvHeading}[1]{
    {\accentColor{\headingSize{\MakeUppercase{\textbf{#1}}}}}
    \vspace{-1ex}
    \newline
    \headingDivider
    \medskip
}

% Durations
\newcommand{\cvDateDuration}[2]{
    \faCalendar*\hspace{0.5em}#1\ifstrequal{#2}{}{}{ - #2}
}
\newcommand{\cvTimeDuration}[1]{
    \faClock\hspace{0.5em}#1
}
\newcommand{\cvDuration}[3]{
    \cvDateDuration{#1}{#2}
    \ifstrequal{#3}{}{}{\hspace{0.5em}\cvTimeDuration{#3}}
}

% Points
\newcommand{\cvTextWithSymbol}[2]{
    #1\hspace{0.2em}#2
}

% Events
\newcommand{\cvEvent}[2]{
    \setlength{\tabcolsep}{6pt}
    \begin{tabular}{m{5.35cm}|m{13.4cm}}
        \centering
        #1 & #2
    \end{tabular}
}
