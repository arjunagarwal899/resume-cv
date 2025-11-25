\ProvidesFile{research_experience.cls}[2025/11/25 Research experience helpers]

\newcommand{\ResearchExperienceSection}[1]{%
    \cvHeading{Research Experience}%
    \input{#1}%
}

\newcommand{\ResearchExperienceEntry}[8]{%
    \cvEvent
        {\cvEmphasizedText{#1}}%
        {\cvProminentText{#2}}%
        {\cvNormalText{#3}}%
        {\cvDuration{#4}{#5}{#6}{#7}}%
        {}{}{}{}%
        {#8}%
}

\newcommand{\ResearchExperienceSpecial}[9]{%
    \cvEvent
        {\cvEmphasizedText{#1}}%
        {\cvProminentText{#2}}%
        {\cvProminentText{#3}}%
        {\cvNormalText{#4}}%
        {\cvDuration{#5}{#6}{#7}{#8}}%
        {}{}{}%
        {#9}%
}

\endinput
