\ProvidesFile{research_experience.cls}[Research experience helpers]

\newcommand{\ResearchExperienceEntry}[5]{
    \cvEvent
        {
            \bodyLightColor{\bodyTextSize{\emph{#1}}}
            \newline
            \accentColor{\prominentTextSize{#2}}
            \newline
            \bodyLightColor{\bodyTextSize{#3}}
            \newline
            \bodyLightColor{\accessoryTextSize{#4}}
        }
        {
            \bodyTextSize{#5}
        }
}


\newcommand{\ResearchExperienceSection}[1]{
    \cvHeading{Research Experience}
    \input{#1}
}
