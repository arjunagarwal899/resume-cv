\ProvidesFile{teaching_experience.cls}[2025/11/25 Teaching experience helpers]

\newcommand{\TeachingExperienceSection}[1]{%
    \cvHeading{Teaching Experience}%
    \input{#1}%
}

\newcommand{\TeachingExperienceEntry}[7]{%
    \cvEvent
        {\cvProminentText{#1}\newline\cvNormalText{#2}\newline\cvDuration{#3}{#4}{#5}{#6}}%
        {#7}%
}

\endinput
