\ProvidesFile{education.cls}[Education helpers]

\newcommand{\EducationInstitution}[1]{\bodyColor{\subHeadingSize{\textbf{#1}}}}

\newcommand{\EducationProgram}[4]{
    \accentColor{
        \cvTextWithSymbol{\bodyTextSize{#1}}{\prominentTextSize{\textbf{#2}\hfill\bodyColor{\bodyTextSize{#3}}}}
    }

    \bodyTextSize{#4}
}

\newcommand{\EducationSection}[1]{
    \cvHeading{Education}
    \input{#1}
}
