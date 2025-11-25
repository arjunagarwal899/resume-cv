\ProvidesFile{certifications.cls}[2025/11/25 Certifications helpers]

\newcommand{\CertificationsSection}[1]{%
    \cvHeading{Certifications}%
    \input{#1}%
}

\newcommand{\CertificationEntry}[5]{%
    \ifstrequal{#4}{}
    {
        \cvEvent
            {\cvEmphasizedText{#1}\newline\cvProminentText{#2}\newline\cvNormalText{#3}}
            {#5}
    } {
        \cvEvent
            {\cvEmphasizedText{#1}\newline\cvProminentText{#2}\newline\cvNormalText{#3}\newline{\footnotesize\color{bodylight}#4}}
            {#5}
    }
}

\newcommand{\SpecialCertificationEntry}[8]{%
    \setlength{\tabcolsep}{6pt}%
    \begin{tabular}{m{5.3cm}m{13.45cm}}
        \multirow{1}{5.3cm}{
            \centering
                \cvEmphasizedText{#1}
                \newline
                \cvProminentText{#2}
                \vspace{5pt}
                \newline
                \cvEmphasizedText{#3}
                \newline
                \cvProminentText{#4}
                \vspace{5pt}
                \newline
                \cvNormalText{#5}
                \newline
                {\footnotesize\color{bodylight}#6}
        }
        & \multicolumn{1}{|m{13.45cm}}{#7\vspace{-\baselineskip}}
        \\[ -5pt ]
        \\
        & \multicolumn{1}{|m{13.45cm}}{#8\vspace{-\baselineskip}}
        \vspace{2pt}
    \end{tabular}
}

\endinput
