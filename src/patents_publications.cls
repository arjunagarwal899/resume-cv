\ProvidesFile{publications.cls}[Publications and patents helpers]

\newcommand{\PatentEntry}[6]{
    % #1: Authors
    % #2: Year
    % #3: Title
    % #4: Patent number
    % #5: Status
    % #6: URL
    \href{#6}{#1\ifstrequal{#2}{}{}{ (#2)}. #3. \emph{#4}. #5}
}

\newcommand{\DoublePatentEntry}[8]{
    % #1: Authors
    % #2: Year
    % #3: Title
    % #4: Patent number 1
    % #5: Status 1
    % #6: Patent number 2
    % #7: Status 2
    % #8: URL
    \href{#8}{#1\ifstrequal{#2}{}{}{ (#2)}. #3. \emph{#4}. #5. \emph{#6}. #7}
}

\newcommand{\PublicationEntry}[7]{
    % #1: Authors
    % #2: Year
    % #3: Title
    % #4: Journal/Conference
    % #5: Volume/Issue/Pages
    % #6: DOI
    % #7: URL
    \href{#7}{#1\ifstrequal{#2}{}{}{ (#2)}. #3. \emph{#4}#5{\ifstrequal{#6}{}{}{. doi: #6}}}
}


\newcommand{\PatentsAndPublicationsSection}[1]{
    \cvHeading{Patents \& Publications}
    \input{#1}
}
