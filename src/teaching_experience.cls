\ProvidesFile{teaching_experience.cls}[Teaching experience helpers]

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
