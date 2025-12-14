\ProvidesFile{teaching_experience.cls}[Teaching experience helpers]

\newcommand{\TeachingExperienceEntry}[4]{
    \cvEvent
        {
            \accentColor{\prominentTextSize{#1}}
            \newline
            \bodyColor{\bodyTextSize{#2}}
            \newline
            \bodyLightColor{\accessoryTextSize{#3}}
        }{
            \bodyTextSize{#4}
        }
}


\newcommand{\TeachingExperienceSection}[1]{
    \cvHeading{Teaching Experience}
    \input{#1}
}

