\ProvidesFile{certifications.cls}[Certifications helpers]

\newcommand{\CertificationEntry}[5]{
    \cvEvent
        {
            \bodyLightColor{\bodyTextSize{\emph{#1}}}
            \newline
            \accentColor{\prominentTextSize{#2}}
            \newline
            \bodyColor{\bodyTextSize{#3}}
            \ifstrequal{#4}{}{}{\newline\bodyLightColor{\accessoryTextSize{#4}}}
        }
        {
            \bodyColor{\bodyTextSize{#5}}
        }
}

\newcommand{\MLDLCertificationEntry}[8]{
    \begin{tabular}{m{5.35cm}m{13.4cm}}
        \multirow{3}{5.35cm}{
            \centering
                \bodyLightColor{\bodyTextSize{\emph{#1}}}
                \newline
                \accentColor{\prominentTextSize{#2}}
                \vspace{5pt}
                \newline
                \bodyLightColor{\bodyTextSize{\emph{#3}}}
                \newline
                \accentColor{\prominentTextSize{#4}}
                \vspace{5pt}
                \newline
                \bodyColor{\bodyTextSize{#5}}
                \newline
                \bodyLightColor{\accessoryTextSize{#6}}
        }
        & \multicolumn{1}{|m{13.4cm}}{\bodyColor{\bodyTextSize{#7}}}
        \\[ -3pt ]
        \\
        & \multicolumn{1}{|m{13.4cm}}{\bodyColor{\bodyTextSize{#8}}}
    \end{tabular}
}


\newcommand{\CertificationsSection}[1]{
    \cvHeading{Certifications}
    \input{#1}
}
