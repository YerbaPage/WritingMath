\LoadClass[UTF8,12pt,oneside]{ctexbook}
\newcommand {\cndash} {\rule {0.2em} {0pt}\rule [0.35em] {1.6em} {0.05em}\rule {0.2em} {0pt}} 
\RequirePackage{amsthm}
\RequirePackage{blindtext}
\RequirePackage{multicol}
% \RequirePackage{showframe}
\RequirePackage{tablefootnote}
% \RequirePackage{cnaddr}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{indentfirst}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{linegoal}
\RequirePackage{graphicx}
\RequirePackage{fancyvrb}
\RequirePackage{hologo}
\RequirePackage{enumerate}
\RequirePackage{pdfpages}
% \RequirePackage[a4paper,left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage[a4paper,centering,scale=0.75,marginparwidth=2cm]{geometry}
\RequirePackage{url}
% \RequirePackage[UTF8]{ctex}
\RequirePackage{graphicx}
\RequirePackage{subfigure} 
\RequirePackage{appendix}
\RequirePackage{float}
\RequirePackage[bookmarksnumbered,bookmarksopen,colorlinks,linkcolor=red,anchorcolor=black,citecolor=blue,urlcolor=blue]{hyperref}
\newtheorem{example}{例}[section]
\newtheorem{exercise}{练习}[section]
\newtheorem{theorem}{定理}[section]
\newtheorem{definition}{定义}[section]
\newtheorem{property}{性质}[section]
\newtheorem{lemma}{引理}[section]
\newtheorem{proposition}{推论}[section]
\newtheorem{corollary}{推论}[section]
\newtheorem{algorithm}{算法}[section]
\newtheorem{solution}{解}[section]
\renewcommand*{\proofname}{\normalfont\bfseries 证明}
% \renewcommand\refname{参考文献}
% \renewcommand\keywordsname{关键词}
% \renewcommand\emailaddrname{邮箱}
% \renewcommand\abstractname{\kaishu{摘要}}
\newcounter{mnote}
\setcounter{mnote}{0}
\newcommand{\mnote}[1]{\addtocounter{mnote}{1}
  \ensuremath{{}^{\bullet\arabic{mnote}}}
  \marginpar{\footnotesize\em\color{red}\ensuremath{\bullet\arabic{mnote}}#1}}

\let\oldmarginpar\marginpar
\renewcommand\marginpar[1]{\-\oldmarginpar[\raggedleft\footnotesize #1]%
{\raggedright\footnotesize #1}}

% \usepackage[style=gb7714-2015,url=false,doi=false]{biblatex}
% \RequirePackage[style=gb7714-2015,url=false,doi=false]{biblatex}
\RequirePackage[style=trad-abbrv,url=false,doi=false]{biblatex}
% \addbibresource{references.bib}

% \makeatletter
% \@namedef{subjclassname@2020}{\textup{\kaishu{MR (2020) 主题分类}}}
% \makeatother

\RequirePackage{verbatim}
\makeatletter
\newcommand{\maketitlepage}{
\vspace*{5cm}
\begin{flushright}
    \begin{minipage}[h][8cm][c]{\textwidth}
        \raggedleft
        {
         \fontsize{25pt}{0pt}\selectfont \textcolor{blue}{Writing Math Paper}\\[0.8ex]}
        {
        \heiti \fontsize{36pt}{0pt}{}\textcolor{blue}{数学论文写作}\par}
    \textcolor{blue}{\rule[-1ex]{\textwidth}{3pt}}
    \end{minipage}
    \hspace{5cm}
    \begin{minipage}[h][3cm][c]{\textwidth}
        \raggedleft\linespread{1.25}\selectfont
        {
        \heiti \zihao{-2} {东林\ 石雨凌}\par}
        {
           \zihao{-2}\textcolor{blue}{} \par}
        {
        \heiti \zihao{-2}{\today}\par}
    \end{minipage}
\end{flushright}
  \thispagestyle{empty}
  \let\cleardoublepage\clearpage
}

