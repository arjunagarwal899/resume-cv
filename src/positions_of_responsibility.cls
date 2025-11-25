\ProvidesFile{positions_of_responsibility.cls}[2025/11/25 Positions of responsibility helpers]

\newcommand{\PositionsOfResponsibilitySection}[1]{%
    \cvHeading{Positions of Responsibility}%
    \input{#1}%
}

\newcommand{\PositionOfResponsibilityEntry}[8]{%
    \cvEvent
        {\cvEmphasizedText{#1}}%
        {\cvProminentText{#2}}%
        {\cvNormalText{#3}}%
        {\cvDuration{#4}{#5}{#6}{#7}}%
        {}{}{}{}%
        {#8}%
}

\endinput
