\ProvidesFile{publications.cls}[Publications and patents helpers]

\newcommand{\PatentEntry}[6]{%
    \href{#6}{#1\ifstrequal{#2}{}{}{ (#2)}. #3. \emph{#4}. #5}%
}

\newcommand{\PublicationEntry}[7]{%
    \href{#7}{#1\ifstrequal{#2}{}{}{ (#2)}. #3. \emph{#4}#5{\ifstrequal{#6}{}{}{. doi: #6}}}%
}

\newcommand{\PatentsAndPublicationsSection}[1]{%
    \cvHeading{Patents \& Publications}%
    \input{#1}%
}

\endinput
