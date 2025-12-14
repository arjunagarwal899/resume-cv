\ProvidesFile{header.cls}[Resume header]

% Name and tagline
\newcommand{\name}[1]{
    \accentColor{\nameSize{\MakeUppercase{\textbf{#1}}}}
}
\newcommand{\tagline}[1]{
    \accentColor{\subHeadingSize{\textbf{#1}}}
}

% Personal info with icons
\newcommand{\personalInfoStyle}[2]{\accentColor{#1}\hspace{0.2cm}\bodyColor{\bodyTextSize{#2}}}

\newcommand{\email}[1]{\href{mailto:#1}{\personalInfoStyle{\faAt}{#1}}}
\newcommand{\address}[1]{\personalInfoStyle{\faEnvelope}{#1}}
\newcommand{\phone}[1]{\personalInfoStyle{\faPhone*}{#1}}
\newcommand{\homepage}[1]{\href{https://#1}{\personalInfoStyle{\faLink}{#1}}}
\newcommand{\twitter}[1]{\personalInfoStyle{\faTwitter}{#1}}
\newcommand{\linkedin}[1]{\href{https://www.linkedin.com/in/#1/}{\personalInfoStyle{\faLinkedin}{#1}}}
\newcommand{\github}[1]{\personalInfoStyle{\faGithub}{#1}}
\newcommand{\orcid}[1]{\personalInfoStyle{\aiOrcid}{#1}}
\newcommand{\location}[1]{\personalInfoStyle{\faMapMarker}{#1}}

\newcommand{\Header}[3]{
    \begin{tabular}{p{0.75\textwidth} p{0.25\textwidth}}
        #1\newline#2
        &
            \raggedright
            #3
            \newline
    \end{tabular}
}

\newcommand{\HeaderSection}[1]{
    \input{#1}
}