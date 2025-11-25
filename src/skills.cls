\ProvidesFile{skills.cls}[Skills helpers]

\newcommand{\SkillsSection}[1]{%
    \cvHeading{Technical Skills}%
    \input{#1}%
}

\newcommand{\SkillTag}[2][]{%
    \ifstrequal{#1}{} {\def\tagColor{body}} {\def\tagColor{#1}}%
    \tikz[baseline]\node[anchor=base,draw=dividers!50,rounded corners, inner ysep =0.75ex,
        text height=1.2ex, align=center, text depth=.25ex]{\color{\tagColor}\small#2};
}

\endinput
