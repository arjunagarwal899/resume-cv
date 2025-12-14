\ProvidesFile{honors_awards.cls}[Honors and awards helpers]

\newcommand{\cvHonorBox}[3]{
    \centering
        \ifstrequal{#1}{}{}{#1}
        \ifstrequal{#2}{}{}{\vspace{1pt}\newline#2}
        \ifstrequal{#3}{}{}{\vspace{1pt}\newline#3}
}

\newcommand{\HonorAchievement}[3]{
    \cvHonorBox
        {\bodyLightColor{\accessoryTextSize{\emph{#1}}}}
        {\accentColor{\prominentTextSize{#2}}}
        {\bodyLightColor{\accessoryTextSize{#3}}}
}


\newcommand{\HonorsAwardsSection}[1]{
    \cvHeading{Honors \& Awards}
    \input{#1}
}
