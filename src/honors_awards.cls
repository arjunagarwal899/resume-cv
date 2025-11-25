\ProvidesFile{honors_awards.cls}[2025/11/25 Honors and awards helpers]

\newcommand{\HonorsAwardsSection}[1]{%
    \cvHeading{Honors \& Awards}%
    \input{#1}%
}

\newcommand{\HonorAchievement}[3]{%
    \cvEventBoxOnly
        {\footnotesize\color{bodylight}\emph{#1}\vspace{3pt}}%
        {\cvProminentText{#2}\vspace{2pt}}%
        {\footnotesize\color{bodylight}#3}%
}

\endinput
