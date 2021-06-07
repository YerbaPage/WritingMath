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
\geometry{top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm,headheight=1.75cm,headsep=14pt,footskip=0.79cm}
%%% ---- 定义字体 ----- %%%

\renewcommand{\normalsize}{\zihao{-4}}% 正常字号
%%% ---- 定义标题和段落样式 ----- %%%
\setlength{\parindent}{2em}%段落缩进两字符
\renewcommand*{\baselinestretch}{1.35}
% 定义22磅行距
\setlength{\parskip}{0em}%段落间的距离
%\renewcommand{\baselinestretch}{1.53})
\renewcommand{\textfraction}{0.15}%页面文本的最小比例(0.2)
\renewcommand{\topfraction}{0.85}%页顶浮动对象高/页高的最大值(0.7)
\renewcommand{\bottomfraction}{0.50}%页底浮动对象高/页高的最大值(0.3)
\renewcommand{\floatpagefraction}{0.80}%浮动页由浮动对象占用的最小比例(0.5
% 设置各个标题样式
%% 中文名称
\renewcommand{\contentsname}{目录}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\appendixname}{附录}
\renewcommand{\indexname}{索引}
\renewcommand{\algorithmcfname}{算法}
\renewcommand{\lstlistingname}{代码}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand{\lstlistlistingname}{\lstlistingname 列表}
%%% ---- 图表标题设置 ----- %%%
\RequirePackage[labelsep=quad]{caption}     % 序号之后空一格写标题
\RequirePackage{subfig}
\DeclareCaptionFont{heiti}{\heiti}
\DeclareCaptionFont{z5}{\zihao{5}}
%图表标题段落前后距离
\captionsetup[table]{labelfont={heiti,z5},textfont={heiti,z5},belowskip={12pt-\intextsep},aboveskip=12pt}
\captionsetup[figure]{labelfont={heiti,z5},textfont={heiti,z5},belowskip={12pt-\intextsep},aboveskip=12pt}
\captionsetup[lstlisting]{labelfont={heiti,z5},textfont={heiti,z5},belowskip=3pt,aboveskip=10pt}
%\setlength{\abovecaptionskip}{0pt}
%\setlength{\belowcaptionskip}{0pt}
%浮动对象和文字间的距离
\setlength{\floatsep}{6pt \@plus4\p@\@minus\p@}
\setlength{\intextsep}{6pt \@plus4\p@\@minus\tw@\p@}
\setlength{\textfloatsep}{12pt }
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{0pt \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
% 设置图片的 caption 格式
\renewcommand{\thetable}{\arabic{chapter}--\arabic{table}}
%\renewcommand{\theequation}{\arabic{chapter}--\arabic{equation}}%公式编号格式
% 使用tabularx创建占满宽度的表格
\newcolumntype{L}{X}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedleft \arraybackslash}X}

\newlength{\BoxTtlwidth}	% 用来计算各种盒子所需宽度
% 各章标题排版: \MakeChapBox{编号}{标题}, 除附录外, 各章用中文数字显示. 以参数是否为大写拉丁字母来判定是否在附录 (烂招)
\newcommand{\MakeChapBox}[2]{%
    \centering
	\settowidth{\BoxTtlwidth}{第\chinese{chapter}章} % 计算宽度
	\begin{tcolorbox}[ % 设置 tcolorbox
		enhanced jigsaw,
		skin = bicolor,
		frame engine = path,
		sharp corners = all,
		width = 0.9\textwidth,
		top = 4mm, bottom = 4mm,
		sidebyside,
		frame hidden,
		boxrule = 0mm,
		lefthand width = \BoxTtlwidth,
		colupper = white,
		colback = gray!80,
		colbacklower = gray!10,
		sidebyside align=center,
		halign=center]
		%
        第\chinese{chapter}章
		\tcblower
		#2
	\end{tcolorbox}%
}

% 无编号标题排版: \MakeChapBox{标题}
\newcommand{\MakeChapBoxSingle}[1]{%
	\begin{tcolorbox}[
		enhanced,
		width = 0.7\textwidth,
		sharp corners = all,
		top = 4mm, bottom = 4mm,
		frame hidden,
		boxrule = 0mm,
		colback = gray!10,
		halign=center]
		#1
	\end{tcolorbox}
}

% 各节标题排版: \MakeSectBox{文字}, 问题: 不允许断行
\newtcbox{\MakeSectBox}{
	enhanced,
	arc = 0pt, outer arc = 0pt,
	before skip = 0pt, after skip = 0.4em, left skip = 0pt, right skip = 0pt,
	top = 0pt, left = 0pt, right = 0pt, bottom = 1.5mm,
	sharp corners = all,
	valign=bottom,
	colback = white,
	colframe = white,
	boxsep = 0pt, leftrule = 0pt, rightrule=0pt, toprule=0pt, bottomrule = 0pt,
	overlay = { \draw[line width=1pt] (interior.south west) -- (interior.south east); }
}

% 用 titlesec 设置各章标题
\titleformat{name=\chapter}
	{\filright\sffamily\heiti\Huge}	% Format
	{}	% Label
	{0mm}	% Sep
	{\MakeChapBox{\thechapter}{#1}}	% Before-code
	[]	% After-code
\titlespacing*{name=\chapter}	% 设置间隔
	{1pc}{*4}{1em}	% {left}{before-sep}{after-sep}

\titleformat{name=\chapter, numberless}
	{\filcenter\sffamily\heiti\Huge}	% Format
	{}	% Label
	{0mm}	% Sep
	{\MakeChapBoxSingle{#1}}	% Before-code
	[]	% After-code
\titlespacing*{name=\chapter, numberless}	% 设置间隔
	{1pc}{*4}{1em}	% {left}{before-sep}{after-sep}

\titleformat{name=\section} % 各节标题
	{\filleft\sffamily\heiti\zihao{3}}
	{}
	{0mm}
	{ \settowidth{\BoxTtlwidth}{#1}  % 首先计算宽度
		\ifdim \BoxTtlwidth < \textwidth % 一般情形下调用 \MakeSectBox
			\MakeSectBox{\huge \thesection \hspace{0.7em} \Large #1}\vskip-18pt%
		\else % 万一标题过长则不用 \MakeSectBox (烂招)
			\huge \underline{\thesection} \hspace{0.7em} \Large #1%
		\fi %
	}
	[]

\titleformat{name=\section, numberless}	% 各节标题: 无编号情形
	{\filleft\sffamily\heiti\zihao{3}}
	{}
	{0mm}
	{ \settowidth{\BoxTtlwidth}{#1}  % 首先计算宽度
		\ifdim \BoxTtlwidth < \textwidth % 一般情形下调用 \MakeSectBox
			\MakeSectBox{\Large #1}\vskip-18pt%
		\else % 万一标题过长则不用 \MakeSectBox (烂招)
			\Large #1 %
		\fi %
	}
	[]
	
\titlespacing*{name=\section}	% 设置间隔
	{1pc}{*1.3}{*1}    % {left}{before-sep}{after-sep}

\titleformat{name=\subsection} % 各子节标题, 采取 runin 形式较美观
	[runin]
	{\filleft\sffamily\heiti\zihao{-3}}
	{\Large\thesubsection}	% Label
	{3mm}	% Sep
	{#1}	% Before-code
	[]		% After-code

\titleformat{name=\subsection, numberless}
	[runin]
	{\filleft\sffamily\heiti\zihao{-3}}
	{}	% Label
	{0mm}	% Sep
	{#1}	% Before-code
	[]		% After-code
\titlespacing*{name=\subsection}	% 设置间隔
	{0pt}{*1}{1em}    % {left}{before-sep}{after-sep}

\titleformat{name=\subsubsection} % 次子节标题, 采取 runin 形式较美观
	[runin]
	{\filleft\sffamily\heiti\zihao{4}}
	{\thesubsubsection}	% Label
	{3mm}	% Sep
	{#1}	% Before-code
	[]		% After-code
	
\titleformat{name=\subsubsection, numberless}
	[runin]
	{\filleft\sffamily\heiti\zihao{4}}
	{}	% Label
	{0mm}	% Sep
	{#1}	% Before-code
	[]		% After-code

\titlespacing*{name=\subsubsection}	% 设置间隔
	{0pt}{*1}{1em}    % {left}{before-sep}{after-sep}

\renewcommand{\thepart}{\chinese{part}}	% 部分的标题编号汉化
\titleformat{name=\part}[display]	% 各部分标题
	{\filcenter\sffamily\heiti\Huge}	% Format
	{第{\thepart}部分}	% Label
	{1.5em}	% Sep
	{#1}	% Before-code
	[]	% After-code

\titlecontents{chapter}
	[0pt]
	{\addvspace{1pc}\zihao{-4}\heiti}
	{\contentsmargin{0pt}\large{\thecontentslabel} \quad}
	{\contentsmargin{0pt}\large}
	{\titlerule*[.7pc]{.}\contentspage}

\titlecontents{section}
	[1.5em]
	{\zihao{-4}\heiti}
	{\thecontentslabel\quad}
	{\thecontentslabel}
	{\titlerule*[.7pc]{.}\contentspage}

\titlecontents{subsection}
	[3.9em]
	{\zihao{-4}\heiti}
	{\thecontentslabel\quad}
	{\ (\thecontentspage)}
	{\titlerule*[.7pc]{.}\contentspage}

\titlecontents{part}
	[0cm]
	{\addvspace{1pc}\zihao{-4}\heiti}
	{\contentsmargin{0pt}\large{\thecontentslabel}\quad}
	{\large}
	{\titlerule*[.7pc]{.}\contentspage}

% 将 figure 和 table 索引加入目录: 使用 etoolbox 提供的 patching
\pretocmd{\listoffigures}{%
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{\listfigurename}
}{}{}
\pretocmd{\listoftables}{%
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{\listtablename}
}{}{}
% Removes the header from odd empty pages at the end of chapters
\makeatletter
\renewcommand{\cleardoublepage}{
	\clearpage\ifodd\c@page\else
	\hbox{}
	\vspace*{\fill}
	\thispagestyle{empty}
	\newpage
	\fi}
% 生成目录
\newcommand{\contents}
{
%\pagestyle{empty}
\tableofcontents       % 目录
\cleardoublepage
\pagestyle{fancy}
}
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
%%% ---- 列表样式----- %%%
\RequirePackage{enumerate, enumitem}
%\setlist{noitemsep}
\setlist{nosep}
\setlist*{leftmargin=*}  % 列表和段落头对齐
\setlist[1]{labelindent=2em} %一级列表缩进
\setlist[2]{labelindent=0em} %二级列表缩进
% 设置item条目的索引符号
\renewcommand{\labelitemi}{\ensuremath{\blacktriangleright}}
\renewcommand{\labelitemii}{\ensuremath{\rhd}}
%\setitemize{leftmargin=0em,itemsep=0em,partopsep=0em,parsep=0em,topsep=0em,itemindent=30em}
%\setenumerate{leftmargin=0em,itemsep=0em,partopsep=0em,parsep=0em,topsep=0em,itemindent=30em}
%%% ---- 修改脚注----- %%%
\makeatletter
\makeatother
\skip\footins=10mm plus 1mm
\footnotesep=6pt
\renewcommand{\footnotesize}{\heiti\zihao{5}}
\renewcommand\footnoterule{\vspace*{-3pt}\hrule width 0.3\columnwidth height 0.75pt
\vspace*{2.6pt}}
% %%% ---- 数学定理样式 ----- %%%
% \theoremstyle{plain}
% \theoremheaderfont{\heiti}
% \theorembodyfont{\heiti} \theoremindent0em"
% ?
% \theorempreskip{0pt}
% \theorempostskip{0pt}
% \theoremnumbering{arabic}
% %%% ---- 引用样式为“图x.y”等----- %%%
% \newcommand{\requ}[1]{(\ref{#1})}
% \newcommand{\rremark}[1]{\text{注}\ref{#1}}
% \newcommand{\rfig}[1]{\text{图} \ref{#1}}
% \newcommand{\rtab}[1]{\text{表} \ref{#1}}
% \newcommand{\rprop}[1]{\text{性质} \ref{#1}}
% \newcommand{\rdef}[1]{\text{定义} \ref{#1}}
% \newcommand{\rthm}[1]{\text{定理} \ref{#1}}
% \newcommand{\mylem}[1]{\text{引理} \ref{#1}}
% \newcommand{\rexa}[1]{\text{例} \ref{#1}}
% \newcommand{\rcor}[1]{\text{推论} \ref{#1}}
% \theoremstyle{nonumberplain}
% \theoremheaderfont{\heiti}
% \theorembodyfont{\normalfont \rm \songti}
% \theoremindent0em \theoremseparator{\hspace{1em}}
% \theoremsymbol{$\square$}
%%% ---- 参考文献设置 ----- %%%
% \RequirePackage[sort&compress]{natbib}
% \setcitestyle{numbers,square,comma}
% \renewcommand{\bibsection}{\chapter*{参考文献}}
% \bibliographystyle{data/gbt7714-2015}
% \newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}% 自定义新命令\upcite, 使参考文献引用以上标出现
% \renewcommand{\eqref}[1]{\textup{{\normalfont（\ref{#1}）\normalfont}}}% 公式引用使用中文括号
% \bibsep=1pt% 参考文献条目间距
\RequirePackage{makeidx}
\makeindex
%% ----清除公式上下间距----- %%%
\AtBeginDocument{
	\setlength{\abovedisplayskip}{2pt}
	\setlength{\belowdisplayskip}{2pt}
	\setlength{\abovedisplayshortskip}{0pt}
	\setlength{\belowdisplayshortskip}{0pt}
}
%%% ---- 封面 ----- %%%
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
% 定义颜色
% success
\definecolor{colorSuccess}{HTML}{28a745}
\definecolor{colorSuccessBorder}{HTML}{c3e6cb}
\definecolor{colorSuccessBackground}{HTML}{d4edda}
\definecolor{colorSuccessText}{HTML}{155724}

% info
\definecolor{colorInfo}{HTML}{17a2b8}
\definecolor{colorInfoBorder}{HTML}{bee5eb}
\definecolor{colorInfoBackground}{HTML}{d1ecf1}
\definecolor{colorInfoText}{HTML}{0c5460}

% danger
\definecolor{colorDanger}{HTML}{dc3545}
\definecolor{colorDangerBorder}{HTML}{f5c6cb}
\definecolor{colorDangerBackground}{HTML}{f8d7da}
\definecolor{colorDangerText}{HTML}{721c24}

% warning
\definecolor{colorWarning}{HTML}{ffc107}
\definecolor{colorWarningBorder}{HTML}{ffeeba}
\definecolor{colorWarningBackground}{HTML}{fff3cd}
\definecolor{colorWarningText}{HTML}{856404}
%% 带标题的文本框
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
  left=5pt, right=5pt, top=5pt, bottom=0pt,
  boxsep=5pt,
  title={\heiti#1},
  halign=left,
  fontupper=\heiti
}


%% Note
\newtcolorbox{noteBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorInfoBorder,
  colback=colorInfoBackground,
  colbacktitle=colorInfoBackground,
  coltext=colorInfoText,
  title={\textcolor{colorInfoText}{\faStickyNoteO\hspace{.5em}\bfseries{注意}}},
  titlerule=0pt,
  halign=left,
  fontupper=\heiti
}

%% Important
\newtcolorbox{importantBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorWarningBorder,
  colback=colorWarningBackground,
  colbacktitle=colorWarningBackground,
  coltext=colorWarningText,
  title={\textcolor{colorWarningText}{\faExclamationCircle\hspace{.5em}\bfseries{重要}}},
  titlerule=0pt,
  halign=left,
  fontupper=\heiti
}

%% Tip
\newtcolorbox{tipBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorSuccessBorder,
  colback=colorSuccessBackground,
  colbacktitle=colorSuccessBackground,
  coltext=colorSuccessText,
  title={\textcolor{colorSuccessText}{\faCheckCircle\hspace{.5em}\bfseries{技巧}}},
  titlerule=0pt,
  halign=left,
  fontupper=\heiti
}

%% Warning
\newtcolorbox{warningBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorDangerBorder,
  colback=colorDangerBackground,
  colbacktitle=colorDangerBackground,
  coltext=colorDangerText,
  title={\textcolor{colorDangerText}{\faExclamationTriangle\hspace{.5em}\bfseries{警告}}},
  titlerule=0pt,
  halign=left,
  fontupper=\heiti
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
\RequirePackage{appendix}
\RequirePackage{float}

% \usepackage[style=gb7714-2015,url=false,doi=false]{biblatex}
% \RequirePackage[style=gb7714-2015,url=false,doi=false]{biblatex}
\RequirePackage[style=trad-abbrv,url=false,doi=false]{biblatex}
% \addbibresource{references.bib}

% \makeatletter
% \@namedef{subjclassname@2020}{\textup{\kaishu{MR (2020) 主题分类}}}
% \makeatother


