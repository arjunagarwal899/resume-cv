\ProvidesFile{teaching_experience.cls}[2025/11/25 Teaching experience helpers]

\newcommand{\TeachingExperienceSection}[1]{%
    \cvHeading{Teaching Experience}%
    \input{#1}%
}

\newcommand{\TeachingExperienceEntry}[7]{%
    \cvEvent
        {\cvProminentText{#1}}%
        {\cvNormalText{#2}}%
        {\cvDuration{#3}{#4}{#5}{#6}}%
        {}{}{}{}{}%
        {#7}%
}

\endinput
