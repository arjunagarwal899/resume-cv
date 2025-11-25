\ProvidesFile{research_experience.cls}[2025/11/25 Research experience helpers]

\newcommand{\ResearchExperienceSection}[1]{%
    \cvHeading{Research Experience}%
    \input{#1}%
}

\newcommand{\ResearchExperienceEntry}[8]{%
    \cvEvent
        {\cvEmphasizedText{#1}\newline\cvProminentText{#2}\newline\cvNormalText{#3}\newline\cvDuration{#4}{#5}{#6}{#7}}%
        {#8}%
}

\newcommand{\ResearchExperienceSpecial}[9]{%
    \cvEvent
        {\cvEmphasizedText{#1}\newline\cvProminentText{#2}\newline\cvProminentText{#3}\newline\cvNormalText{#4}\newline\cvDuration{#5}{#6}{#7}{#8}}%
        {#9}%
}

\endinput
