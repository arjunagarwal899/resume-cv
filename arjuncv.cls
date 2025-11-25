\NeedsTeXFormat{LaTeX2e}[1995/12/01]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}




\RequirePackage[margin=2cm]{geometry}
\RequirePackage{fontawesome5}
\RequirePackage[newcommands]{ragged2e}
\RequirePackage[table]{xcolor}
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{dashrule}
\RequirePackage{multirow,tabularx}
\RequirePackage{changepage}
\RequirePackage{marginfix}
\RequirePackage{array}
\RequirePackage{multicol}
\RequirePackage{multirow}


\definecolor{Navy}{HTML}{000080}
\definecolor{LightGrey}{HTML}{6E6E6E}
\definecolor{Black}{HTML}{000000}

\colorlet{accent}{Navy}
\colorlet{emphasis}{Navy}
\colorlet{dividers}{LightGrey}
\colorlet{body}{Black}
\colorlet{bodylight}{LightGrey}



\setlength{\parindent}{0pt}

\newcommand{\divider}{
    \vspace{-9pt}
    \textcolor{dividers!50}
    {\hdashrule{\linewidth}{0.6pt}{0.5ex}}%
    \smallskip
}

\newcommand{\doubledivider}{
    \vspace{-9pt}
    \textcolor{dividers!50}{
    \hdashrule{\linewidth}{0.6pt}{0.5ex}}%
    \vspace{-10pt}\newline
    \textcolor{dividers!50}{
    \hdashrule{\linewidth}{0.6pt}{0.5ex}}%
    \smallskip
}

\newenvironment{fullwidth}{%
  \begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
  {\end{adjustwidth}}

\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone*}
\newcommand{\homepagesymbol}{\faLink}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}

\newcommand{\printinfo}[2]{\mbox{\textcolor{accent}{\normalfont #1}\hspace{0.5em}#2\hspace{2.5em}}}

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\applicationID}[1]{\def\@applicationid{#1}}
\newcommand{\email}[1]{
    \href{mailto:#1}{
        \printinfo{\emailsymbol}{#1}
    }
}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{
    \href{https://#1}{
        \printinfo{\homepagesymbol}{#1}
    }
}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{
    \href{https://www.linkedin.com/in/#1/}{
        \printinfo{\linkedinsymbol}{#1}
    }
}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}

\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

% \newcommand{\makecvheader}{
%     \begingroup
%         \raggedright
%         {\Huge\bfseries\color{emphasis}\MakeUppercase\@name\par}
%         \medskip
%         {\large\bfseries\color{accent}\@tagline\par}
%         \medskip
%         {\footnotesize\color{body}\@personalinfo\par}
%         \smallskip%
%     \endgroup
% }

\newcommand{\makecvheader}{
    \begingroup
        \begin{minipage}[t]{0.75\textwidth}
            \raggedright
            {\Huge\bfseries\color{emphasis}\MakeUppercase\@name\par}
            \medskip
            {\large\bfseries\color{accent}\@tagline\par}
        \end{minipage}%
        \begin{minipage}[t]{0.25\textwidth}
            \raggedright
            {\footnotesize\color{body}\@personalinfo\par}
        \end{minipage}
    \endgroup
}


\newcommand{\cvHeading}[1]{%
    \medskip
    {\color{accent}\Large\bfseries\MakeUppercase{#1}}%
    \\%
    [-1ex]{\color{accent}\rule{\linewidth}{2pt}\par}%
    \medskip%
}

\newcommand{\cvDuration}[4]{
    \ifstrequal{#4}{}{\def\durationColor{bodylight}}{\def\durationColor{#4}}
    \color{\durationColor}{
        \footnotesize\faCalendar*\hspace{0.5em}#1%
        \ifstrequal{#2}{}{}{ - #2}%
        \ifstrequal{#3}{}{}{\hspace{1em}\faClock\hspace{0.5em}#3}%
    }%
}

\newcommand{\cvNormalText}[1]{
    {\color{body}\small{#1}}%
}

\newcommand{\cvEmphasizedText}[1]{
    {\color{bodylight}\small\emph{#1}}%
}

\newcommand{\cvProminentText}[1]{
    {\color{emphasis}{\normalsize{#1}}}%
}

% \newcommand{\cvPoint}[2]{%
%     {\small%
%         \ifstrequal{#1}{}{$\bullet$}{#1}%
%         \hspace{0.2em}#2%
%     }
% }
\newcommand{\cvPoint}[2]{%
    {\small%
        \setlength{\tabcolsep}{0.2em}
        \begin{tabular}{l p{13.3cm}}
            \centering
                \ifstrequal{#1}{}{$\bullet$}{#1}%
            & #2
        \end{tabular}
    }
}

% \newcommand{\cvNestedPoint}[2]{%
%     {\small%
%         \hspace*{1.5em}%
%         \ifstrequal{#1}{}{$\bullet$}{#1}%
%         \hspace{0.2em}#2%
%     }
% }
\newcommand{\cvNestedPoint}[2]{%
    {\small%
        \setlength{\tabcolsep}{0.2em}
        \begin{tabular}{p{0.2cm} l p{13cm}}
            &
            \centering
                \ifstrequal{#1}{}{$\bullet$}{#1}%
            & #2
        \end{tabular}
    }
}

\newcommand{\cvMainPoint}[2]{%
    {\normalsize%
        \ifstrequal{#1}{}{$\bullet$}{#1}%
        \hspace{0.2em}#2%
    }
}

\newcommand{\cvEvent}[9]{
    \setlength{\tabcolsep}{6pt}
    \begin{tabular}{m{5.3cm}|m{13.45cm}}
        \centering
            \ifstrequal{#1}{}{}{#1}%
            \ifstrequal{#2}{}{}{\newline#2}%
            \ifstrequal{#3}{}{}{\newline#3}%
            \ifstrequal{#4}{}{}{\newline#4}%
            \ifstrequal{#5}{}{}{\newline#5}%
            \ifstrequal{#6}{}{}{\newline#6}%
            \ifstrequal{#7}{}{}{\newline#7}%
            \ifstrequal{#8}{}{}{\newline#8}%
        & #9
        \vspace{-\baselineskip}
    \end{tabular}
}

\newcommand{\cvEventBoxOnly}[3]{
    \centering
        \ifstrequal{#1}{}{}{#1}%
        \ifstrequal{#2}{}{}{\newline#2}%
        \ifstrequal{#3}{}{}{\newline#3}%
}

\newcommand{\cvTeachingExperience}[7]{
    \cvEvent
        {\cvProminentText{#1}}
        {\cvNormalText{#2}}
        {\cvDuration{#3}{#4}{#5}{#6}}
        {}{}{}{}{}
        {#7}
}

\newcommand{\cvResearchExperience}[8]{
    \cvEvent
        {\cvEmphasizedText{#1}}
        {\cvProminentText{#2}}
        {\cvNormalText{#3}}
        {\cvDuration{#4}{#5}{#6}{#7}}
        {}{}{}{}
        {#8}
}

\newcommand{\cvSpecialResearchExperience}[9]{
    \cvEvent
        {\cvEmphasizedText{#1}}
        {\cvProminentText{#2}}
        {\cvProminentText{#3}}
        {\cvNormalText{#4}}
        {\cvDuration{#5}{#6}{#7}{#8}}
        {}{}{}
        {#9}
}

\newcommand{\cvWorkExQure}[8]{
    \cvEvent
        {\cvProminentText{#1}\vspace{0.3cm}}
        {\cvNormalText{#2}}
        {#3\vspace{0.4cm}}
        {\cvNormalText{#4}}
        {#5\vspace{0.4cm}}
        {\cvNormalText{#6}}
        {#7\vspace{0.4cm}}
        {}
        {#8\vspace{0.2cm}}
}
\newcommand{\cvWorkEx}[7]{
    \cvEvent
        {\cvProminentText{#1}}
        {\cvNormalText{#2}}
        {\cvDuration{#3}{#4}{#5}{#6}}
        {}{}{}{}{}
        {#7}
}

\newcommand{\cvPOR}[8]{
    \cvEvent
        {\cvEmphasizedText{#1}}
        {\cvProminentText{#2}}
        {\cvNormalText{#3}}
        {\cvDuration{#4}{#5}{#6}{#7}}
        {}{}{}{}
        {#8}
}

\newcommand{\cvCertification}[5]{
    \ifstrequal{#4}{}
    {
        \cvEvent
            {\cvEmphasizedText{#1}}
            {\cvProminentText{#2}}
            {\cvNormalText{#3}}
            {}{}{}{}{}
            {#5}
    } {
        \cvEvent
            {\cvEmphasizedText{#1}}
            {\cvProminentText{#2}}
            {\cvNormalText{#3}}
            {\footnotesize\color{bodylight}#4}
            {}{}{}{}
            {#5}
    }
}

\newcommand{\cvSpecialCertification}[8]{
    \setlength{\tabcolsep}{6pt}
    \begin{tabular}{m{5.3cm}m{13.45cm}}
        % \vspace{6pt}
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
        \\[-5pt]
        \\
        & \multicolumn{1}{|m{13.45cm}}{#8\vspace{-\baselineskip}}
        \vspace{2pt}
    \end{tabular}
}

\newcommand{\cvBigProject}[7]{
    \cvEvent
        {\cvProminentText{#1}}
        {\cvNormalText{#2}}
        {\cvDuration{#3}{#4}{#5}{#6}}
        {}{}{}{}{}
        {#7}
}

\newcommand{\cvSmallProject}[3]{
    \ifstrequal{#2}{}
        {
            \cvEvent
                {\cvProminentText{#1}}
                {}
                {}{}{}{}{}{}
                {#3}
        }{
            \cvEvent
                {\cvProminentText{#1}}
                {\cvNormalText{#2}}
                {}{}{}{}{}{}
                {#3}
        }
}

\newcommand{\cvCommunityService}[8]{
    \cvEvent
        {\cvEmphasizedText{#1}}
        {\cvProminentText{#2}}
        {\cvNormalText{#3}}
        {\cvDuration{#4}{#5}{#6}{#7}}
        {}{}{}{}
        {#8}
}

\newcommand{\cvAchievement}[3]{
    \cvEventBoxOnly
        {\footnotesize\color{bodylight}\emph{#1}\vspace{3pt}}%
        {\cvProminentText{#2}\vspace{2pt}}%
        {\footnotesize\color{bodylight}#3}%
}

\newcommand{\cvPatent}[6]{
    \href{#6}{%
        #1\ifstrequal{#2}{}{}{ (#2)}. #3. \emph{#4}. #5
    }
}

\newcommand{\cvPublication}[7]{
    \href{#7}{%
        #1\ifstrequal{#2}{}{}{ (#2)}. #3. \emph{#4}#5{\ifstrequal{#6}{}{}{. doi: #6}}
    }
}

\newcommand{\cvTag}[2]{%
    \ifstrequal{#2}{}{\def\tagColor{body}}{\def\tagColor{#2}}
    \tikz[baseline]\node[anchor=base,draw=dividers!50,rounded corners, inner ysep =0.75ex,%
        text height=1.2ex, align=center, text depth=.25ex,% text width=1.46cm,%
    ]{\color{\tagColor}\small#1};
}
