\ProvidesFile{education.cls}[Education helpers]

\newcommand{\EducationSection}[1]{%
    \cvHeading{Education}%
    \input{#1}%
}

\newcommand{\EducationInstitution}[1]{{\color{body}\large\bfseries{#1}}}

\newcommand{\EducationProgram}[3]{%
    {\color{accent}\cvMainPoint{#1}{\bfseries #2\hfill #3}}%
}

\newcommand{\EducationDetail}[1]{\qquad\cvPoint{}{#1}}

\endinput
