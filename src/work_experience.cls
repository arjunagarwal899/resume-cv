\ProvidesFile{work_experience.cls}[2025/11/25 Work experience helpers]

\newcommand{\WorkExperienceSection}[1]{%
    \cvHeading{Work Experience}%
    \input{#1}%
}

\newcommand{\WorkExperienceMultiRole}[8]{%
    \cvEvent
        {\cvProminentText{#1}\vspace{0.3cm}\newline\cvNormalText{#2}\newline#3\vspace{0.4cm}\newline\cvNormalText{#4}\newline#5\vspace{0.4cm}\newline\cvNormalText{#6}\newline#7\vspace{0.4cm}}
        {#8\vspace{0.2cm}}%
}

\newcommand{\WorkExperienceEntry}[7]{%
    \cvEvent
        {\cvProminentText{#1}\newline\cvNormalText{#2}\newline\cvDuration{#3}{#4}{#5}{#6}}
        {#7}%
}

\endinput
