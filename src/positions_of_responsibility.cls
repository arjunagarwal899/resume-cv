\ProvidesFile{positions_of_responsibility.cls}[Positions of responsibility helpers]

\newcommand{\PositionOfResponsibilityEntry}[5]{
    \cvEvent
        {
            \bodyLightColor{\bodyTextSize{\emph{#1}}}
            \newline
            \accentColor{\prominentTextSize{#2}}
            \newline
            \bodyColor{\bodyTextSize{#3}}
            \newline
            \bodyLightColor{\accessoryTextSize{#4}}
        }
        {
            \bodyColor{\bodyTextSize{#5}}
        }
}


\newcommand{\PositionsOfResponsibilitySection}[1]{
    \cvHeading{Positions of Responsibility}
    \input{#1}
}
