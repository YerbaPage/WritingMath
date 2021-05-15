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
\RequirePackage[style=gb7714-2015,url=false,doi=false]{biblatex}
\addbibresource{references.bib}

% \makeatletter
% \@namedef{subjclassname@2020}{\textup{\kaishu{MR (2020) 主题分类}}}
% \makeatother

% % 可供选择的主题分类(组合相关):
% \subjclass[2020]{
% % from https://www.impan.pl/wydawnictwa/dla-autorow/msc2020.pdf
% % 05A05, % Permutations, words, matrices
% % 05A10, % Factorials, binomial coefficients, combinatorial functions [See also 11B65, 33Cxx]
% % 05A15, % Exact enumeration problems, generating functions [See also 33Cxx, 33Dxx]
% % 05A16, % Asymptotic enumeration
% % 05A17, % Combinatorial aspects of partitions of integers [See also 11P81, 11P82, 11P83]
% % 05A18, % Partitions of sets
% 05A19 % Combinatorial identities, bijective combinatorics
% % 05A20, % Combinatorial inequalities
% % 05A30, % q-calculus and related topics [See also 33Dxx]
% % 05A40, % Umbral calculus
% % 05A99, % None of the above, but in this section
% }