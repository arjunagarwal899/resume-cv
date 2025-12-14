\ProvidesFile{work_experience.cls}[Work experience helpers]

\newcommand{\QureWorkExperienceColumns}[8]{
    \cvEvent
        {
            \accentColor{\prominentTextSize{#1}}
            \vspace{0.3cm}
            \newline
            \bodyColor{\bodyTextSize{#2}}
            \newline
            \bodyLightColor{\accessoryTextSize{#3}}
            \vspace{0.4cm}
            \newline
            \bodyColor{\bodyTextSize{#4}}
            \newline
            \bodyLightColor{\accessoryTextSize{#5}}
            \vspace{0.4cm}
            \newline
            \bodyColor{\bodyTextSize{#6}}
            \newline
            \bodyLightColor{\accessoryTextSize{#7}}
            \vspace{0.4cm}
        }
        {
            \bodyTextSize{#8}
        }
}

\newcommand{\WorkExperienceColumns}[4]{
    \cvEvent{
        \accentColor{\prominentTextSize{#1}}
        \newline
        \bodyColor{\bodyTextSize{#2}}
        \newline
        \bodyLightColor{\accessoryTextSize{#3}}
    }{
        \bodyTextSize{#4}
    }
}

\newcommand{\WorkExperienceFlat}[4]{
    \bodyColor{\subHeadingSize{\bfseries#1}}\hfill\bodyColor{\bodyTextSize{#2}}
    \vspace{0.3em}
    \newline
    \accentColor{\prominentTextSize{\bfseries#3}}
    \vspace{0.3em}
    \prominentTextSize{#4}
}

\newcommand{\WorkExperienceSection}[1]{
    \cvHeading{Work Experience}
    \input{#1}
}