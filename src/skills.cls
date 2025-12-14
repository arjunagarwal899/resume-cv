\ProvidesFile{skills.cls}[Skills helpers]

\newcommand{\SkillTag}[2][]{
    \tikz[baseline]\node[anchor=base,draw=dividers!50,rounded corners, inner ysep =0.75ex,
        text height=1.2ex, align=center, text depth=.25ex]{\bodyColor{\bodyTextSize{#2}}};
}


\newcommand{\SkillsSection}[1]{
    \cvHeading{Technical Skills}
    \input{#1}
}
