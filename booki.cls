\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ibook}
%%% ---- 载入Class ----- %%%
\LoadClass[a4paper,openany,twoside,heading=true,UTF8]{ctexbook} % A4大小，book布局
%%% ---- 引入宏包 ----- %%%
\RequirePackage{geometry}
\RequirePackage{pdfpages}
\RequirePackage{fancyhdr} % 页眉页脚宏包
\RequirePackage{setspace}
\RequirePackage{amsmath, amssymb}
\RequirePackage{amsthm}
% \RequirePackage[amsmath,thmmarks]{ntheorem}  % 定理
\RequirePackage{graphicx}
\RequirePackage{listings}% 代码段
\RequirePackage{algorithm2e, algorithmic}    % 算法代码
\RequirePackage{tikz, pgfplots}  % 绘图
\RequirePackage{fontspec, url, array}
\RequirePackage{txfonts} % Times 风格（数学）字体
\RequirePackage{indentfirst}
\RequirePackage{blindtext}
\RequirePackage{longtable}  % 做长表格的包
\RequirePackage{booktabs,bigstrut,multirow}%插入三线表,表格
\RequirePackage{tabularx, makecell}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage[calcwidth, nobottomtitles, explicit, newparttoc, indentafter]{titlesec}
\RequirePackage{titletoc}
\RequirePackage[many]{tcolorbox}% 定义文本框盒子
\RequirePackage{fontawesome}
\graphicspath{{figures/}} % 图片文件路径
%%% ---- 定义页边距 ----- %%%
\geometry{a4paper,centering,scale=0.75,marginparwidth=2cm}
% \geometry{top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm,headheight=1.75cm,headsep=14pt,footskip=0.79cm}
%%% ---- 定义字体 ----- %%%

\renewcommand{\normalsize}{\zihao{-4}}% 正常字号
%%% ---- 定义标题和段落样式 ----- %%%
% \setlength{\parindent}{2em}%段落缩进两字符
% \renewcommand*{\baselinestretch}{1.35}
% 定义22磅行距
% \setlength{\parskip}{1em}%段落间的距离
%\renewcommand{\baselinestretch}{1.53})
% \renewcommand{\textfraction}{0.15}%页面文本的最小比例(0.2)
% \renewcommand{\topfraction}{0.85}%页顶浮动对象高/页高的最大值(0.7)
% \renewcommand{\bottomfraction}{0.50}%页底浮动对象高/页高的最大值(0.3)
% \renewcommand{\floatpagefraction}{0.80}%浮动页由浮动对象占用的最小比例(0.5
% 设置各个标题样式
% Removes the header from odd empty pages at the end of chapters

% 默认页面页眉页脚样式
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
%\renewcommand{\sectionmark}[1]{\markright{#1}{}}
\fancyhead[LE,RO]{\sffamily\thepage}  %在奇数页的右上角显示页码，偶数页的左上角显示页码
\fancyhead[LO]{\heiti\rightmark} % 在奇数页的左侧显示小节名
\fancyhead[RE]{\heiti\leftmark}  % 在偶数页的右侧显示章名
\renewcommand{\headrulewidth}{0.75pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{\fancyhead{}\renewcommand{\headrulewidth}{0pt}}
%% ---- 修改脚注----- %%%
\makeatletter
\makeatother
\skip\footins=10mm plus 1mm
\footnotesep=6pt
\renewcommand{\footnotesize}{\heiti\zihao{5}}
\renewcommand\footnoterule{\vspace*{-3pt}\hrule width 0.3\columnwidth height 0.75pt
\vspace*{2.6pt}}

\RequirePackage{makeidx}
\makeindex
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
%%% ---- 设置listings/lstlistings----- %%%
\newcommand{\key}[1]{\textcolor{blue}{#1}}
\newtcolorbox{titledBox}[1]{%
  tikznode boxed title,
  enhanced,
  arc=3pt,
  interior style={white},
  attach boxed title to top center = {yshift=-\tcboxedtitleheight/2},
  fonttitle=\normalfont,
  colbacktitle=white,coltitle=black,
  boxed title style={size=normal,colframe=white,boxrule=0pt},
  boxrule=.5pt,
  left=5pt, right=5pt, top=15pt, bottom=10pt,
  boxsep=5pt,
  title={\textbf{#1}},
  halign=left
}

%%% ---- 设置 PDF 文件信息----- %%%
\RequirePackage[colorlinks,
			linkcolor=blue,
			anchorcolor=blue,
			citecolor=blue,
			urlcolor=blue
			]{hyperref}
\hypersetup{
	pdfauthor = {},
	pdftitle = {},
	pdfkeywords = {}}
	
\newcommand {\cndash} {\rule {0.2em} {0pt}\rule [0.35em] {1.6em} {0.05em}\rule {0.2em} {0pt}} 
\RequirePackage{blindtext}
\RequirePackage{multicol}
\RequirePackage{tablefootnote}
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
\RequirePackage{url}
% \RequirePackage[UTF8]{ctex}
\RequirePackage{graphicx}
% \RequirePackage{appendix}
\RequirePackage{float}

% \usepackage[style=gb7714-2015,url=false,doi=false]{biblatex}
% \RequirePackage[style=gb7714-2015,url=false,doi=false]{biblatex}
\RequirePackage[style=trad-abbrv,url=false,doi=false]{biblatex}
% \addbibresource{references.bib}

% \makeatletter
% \@namedef{subjclassname@2020}{\textup{\kaishu{MR (2020) 主题分类}}}
% \makeatother


