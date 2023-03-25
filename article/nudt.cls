\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nudt}[2022/09/26 Standard LaTeX nudt class]
%% Loading Class
\LoadClass[a4paper,12pt]{article}
%% Loading Package
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{nudtthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 支持中文的 ctex 宏包
\RequirePackage{ctex}
% 页面布局
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}

% 设置颜色
\RequirePackage{xcolor}
% 插入图片
\RequirePackage{graphicx}
\RequirePackage{float}
% 表格
\RequirePackage{array}
%% 长表格
\RequirePackage{longtable}
%% booktabs 提供了\toprule 等命令.
\RequirePackage{booktabs,tabularx}
%% multirow 支持在表格中跨行
\RequirePackage{multirow}
%% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
%% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 保护脆落命令
\RequirePackage{cprotect}
% 设置代码环境
\RequirePackage{listings}
\RequirePackage{xcolor}
% 插入链接
\RequirePackage{url}
% 绘图的包
\RequirePackage{tikz}
\usetikzlibrary{snakes}

% 字图与子标题
\RequirePackage{subcaption}
\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
%\renewcommand{\cftsecdotsep}{1.5}
\renewcommand{\cftsecdotsep}{4.5}
\setlength{\cftbeforesecskip}{7pt}
\setlength{\cftbeforesubsecskip}{3pt}
%\setlength{\cftbeforesubsecskip}{5pt}
\renewcommand{\cftsecfont}{\zihao{-4}\songti}%目录的sec小四宋体
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}%后面加入连接点
\renewcommand{\cftsecaftersnumb}{\hskip.4em}

%----代码高亮方案宏包----% 

\definecolor{CPPLight}  {HTML} {686868}
\definecolor{CPPSteel}  {HTML} {888888}
\definecolor{CPPDark}   {HTML} {262626}
\definecolor{CPPBlue}   {HTML} {4172A3}
\definecolor{CPPGreen}  {HTML} {487818}
\definecolor{CPPBrown}  {HTML} {A07040}
\definecolor{CPPRed}    {HTML} {AD4D3A}
\definecolor{CPPViolet} {HTML} {7040A0}
\definecolor{CPPGray}  {HTML} {B8B8B8}
\lstset{
	basicstyle=\ttfamily,
	breaklines=true,
	framextopmargin=50pt,
	frame=bottomline,
	columns=fixed,       
	%numbers=left,                                       % 在左侧显示行号
	frame=none, 
	basewidth=0.5em,                                         % 不显示背景边框
	backgroundcolor=\color[RGB]{255,255,255},            % 设定背景颜色
	keywordstyle=\color[RGB]{40,40,255},                 % 设定关键字颜色
	numberstyle=\footnotesize\color{darkgray},           % 设定行号格式
	commentstyle=\itshape\color[RGB]{0,96,96},                % 设置代码注释的格式
	stringstyle=\slshape\color[RGB]{128,0,0},   % 设置字符串格式
	showstringspaces=false,                              % 不显示字符串中的空格
	language=python,                                     % 设置语言
	morekeywords={alignas,continute,friend,register,true,alignof,decltype,goto,
		reinterpret_cast,try,asm,defult,if,return,typedef,auto,delete,inline,short,
		typeid,bool,do,int,signed,typename,break,double,long,sizeof,union,case,
		dynamic_cast,mutable,static,unsigned,catch,else,namespace,static_assert,using,
		char,enum,new,static_cast,virtual,char16_t,char32_t,explict,noexcept,struct,
		void,export,nullptr,switch,volatile,class,extern,operator,template,wchar_t,
		const,false,private,this,while,constexpr,float,protected,thread_local,
		const_cast,for,public,throw,std,networkx,ne,atplotlib.pyplot,as},
	emph={map,set,multimap,multiset,unordered_map,unordered_set,numpy,graph,path,append,extend,
		unordered_multiset,unordered_multimap,vector,string,list,deque,
		array,stack,forwared_list,iostream,memory,shared_ptr,unique_ptr,
		random,bitset,ostream,istream,cout,cin,endl,move,default_random_engine,
		uniform_int_distribution,iterator,algorithm,functional,bing,numeric,cross_rate,mutate_rate,
		n_population,DNA_size,x_bounder,self,population,n_iterations,init,networkx,ne,atplotlib.pyplot,as},
	emphstyle=\color{CPPViolet}, 
}
%-----------------%

% \definecolor{dkgreen}{rgb}{0,0.6,0}
% \definecolor{gray}{rgb}{0.5,0.5,0.5}
% \definecolor{mauve}{rgb}{0.58,0,0.82}

% \lstset{
%   frame=tb,
%   aboveskip=3mm,
%   belowskip=3mm,
%   showstringspaces=false,
%   columns=flexible,
%   framerule=1pt,
%   rulecolor=\color{gray!35},
%   backgroundcolor=\color{gray!5},
%   basicstyle={\small\ttfamily},
%   numbers=none,
%   numberstyle=\tiny\color{gray},
%   keywordstyle=\color{blue},
%   commentstyle=\color{dkgreen},
%   stringstyle=\color{mauve},
%   breaklines=true,
%   breakatwhitespace=true,
%   tabsize=3,
% }
% 首行缩进
\RequirePackage{indentfirst}
% 设置浮动体的标题
\RequirePackage{caption}
% 定制列表环境
\RequirePackage{enumitem}
% 下划线
\RequirePackage{ulem}
% 尺寸计算
\RequirePackage{calc}

\RequirePackage[titletoc,title]{appendix}

%\RequirePackage[title,toc,titletoc]{appendix}

\RequirePackage{etoolbox}

\AtBeginEnvironment{abstract}{
\pagenumbering{roman}
\addcontentsline{toc}{section}{摘要}
}

% 超链接 hyperref 的设置
\RequirePackage{hyperref}
% 智能自动化交叉引用
\RequirePackage{cleveref}
%% Document Layout
% 页面布局
\geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
\renewcommand*{\baselinestretch}{1.38}
% 修改tabular 环境, 设置表格中的行间距为正文行间距.
\let\nudt@oldtabular\tabular
\let\nudt@endoldtabular\endtabular
\renewenvironment{tabular}%
    {\bgroup%
    \renewcommand{\arraystretch}{1.38}%
    \nudt@oldtabular}%
    {\nudt@endoldtabular\egroup}
% 每行缩进两个汉字
\setlength\parindent{2em}
% 设置字体
\setmainfont{Times New Roman}
%\setmonofont{Courier New}
\setsansfont{Arial}
\setCJKfamilyfont{kai}[AutoFakeBold]{simkai.ttf}
\newcommand*{\kai}{\CJKfamily{kai}}
\setCJKfamilyfont{song}[AutoFakeBold={2.17}]{SimSun}
\newcommand*{\song}{\CJKfamily{song}}
% \setCJKfamilyfont{zhsong}[AutoFakeBold={2.17}]{SimSun}
% \newcommand*{\song}{\CJKfamily{zhsong}}

\renewcommand\normalsize{%
    \@setfontsize\normalsize{12.05}{14.45}%
    \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@}
% 数学环境, 定理等设置
\newtheorem{definition}{\nudt@cap@definition}
\newtheorem{theorem}{\nudt@cap@theorem}
\newtheorem{lemma}{\nudt@cap@lemma}
\newtheorem{corollary}{\nudt@cap@corollary}
\newtheorem{assumption}{\nudt@cap@assumption}
\newtheorem{conjecture}{\nudt@cap@conjecture}
\newtheorem{axiom}{\nudt@cap@axiom}
\newtheorem{principle}{\nudt@cap@principle}
\newtheorem{problem}{\nudt@cap@problem}
\newtheorem{example}{\nudt@cap@example}
\newtheorem{proof}{\nudt@cap@proof}
\newtheorem{solution}{\nudt@cap@solution}

% 浮动环境设置
% 默认情况下, \LaTeX{} 要求每页的文字至少占据 20%,否则该页就只单独放置一个浮动环境,
% 而这通常不是我们想要的, 我们将这个要求降低到 5%.
 \renewcommand*{\textfraction}{0.05}
% 有时如果多个浮动环境连续放在一起, \LaTeX{}
% 会将它们分在几个不同页，即使它们可在同一页放
% 得下. 我们可以通过修改 |\topfraction| 和 |\bottomfraction| 分别设置顶端和底端的浮
% 动环境的最大比例.
 \renewcommand*{\topfraction}{0.9}
 \renewcommand*{\bottomfraction}{0.8}
% 有时\LaTeX{}会把一个浮动环境单独放在一页,
% 我们要求这个环境至少要占据 85% 才能单独放在一页.
% 注意:  |\floatpagefraction| 的数值必须小于 |\topfraction|.
 \renewcommand*{\floatpagefraction}{0.85}
% 关于图片 graphicx
 % 如果图片没有指定后缀, 依次按下列顺序搜索
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
 % 设置图表搜索路径, 可以给图表文件夹取如下名字
\graphicspath{{figures/}{figure/}{pictures/}%
  {picture/}{pic/}{pics/}{image/}{images/}}
% 图表标题
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{five}{\zihao{5}}
\captionsetup[figure]{%
    format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
    labelsep=quad, % 分隔符是一个空格
    font={song,five,bf}, % 图的字体, 宋体五号
    position=bottom % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\captionsetup[table]{%
    format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
    labelsep=quad, % 分隔符是一个空格
    font={song,five,bf}, % 表的字体, 宋体五号
    position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
% 列表环境设置
\setlist{%
    topsep=0.3em, % 列表顶端的垂直空白
    partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
    itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
    parsep=0pt, % 列表项内的段落之间的垂直空白
    leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
    rightmargin=0em, % 环境的右边界和列表之间的水平距离
    labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
    labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}

% 超链接
     \hypersetup{%
%         xetex,
        % unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
         pdfstartview=FitH,
         CJKbookmarks=true,
         bookmarksnumbered=true,
         bookmarksopen=true,
         colorlinks, %注释掉此项则交叉引用为彩色边框(将colorlinks和pdfborder同时注释掉)
         pdfborder=001,   %注释掉此项则交叉引用为彩色边框
         allcolors=black,
         breaklinks=true}%
% \if@nudt@bwprint
% \AtBeginDocument{\hypersetup{hidelinks}}
% \else\relax\fi
\pdfstringdefDisableCommands{%
    \def\cftdotfill{ }%
}
\lstnewenvironment{tcode}
  {
    \lstset{basicstyle = \small\ttfamily,
        language=TeX,
        tabsize = 4,
        frame = single,
        escapechar = `,
        breaklines = true,
        breakatwhitespace = true,
        frameround = tttt,
    }
  }
  {}
%%% crefformat settings
\crefformat{figure}{#2图~#1#3}
\crefrangeformat{figure}{图~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{figure}{图~(#2#1#3)}{和~(#2#1#3)}{，(#2#1#3)}{和~(#2#1#3)}

\crefformat{table}{#2表#1#3}
\crefrangeformat{table}{表(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{table}{表~(#2#1#3)}{和~(#2#1#3)}{，(#2#1#3)}{和~(#2#1#3)}

\crefformat{equation}{#2式~(#1#3)}
\crefrangeformat{equation}{式~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{equation}{式~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{definition}{#2\nudt@cap@definition~#1#3}
\crefrangeformat{definition}{\nudt@cap@definition~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{definition}{\nudt@cap@definition~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{theorem}{#2\nudt@cap@theorem~#1#3}
\crefrangeformat{theorem}{\nudt@cap@theorem~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{theorem}{\nudt@cap@theorem~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{lemma}{#2\nudt@cap@lemma~#1#3}
\crefrangeformat{lemma}{\nudt@cap@lemma~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{lemma}{\nudt@cap@lemma~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{corollary}{#2\nudt@cap@corollary~#1#3}
\crefrangeformat{corollary}{\nudt@cap@corollary~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{corollary}{\nudt@cap@corollary~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{assumption}{#2\nudt@cap@assumption~#1#3}
\crefrangeformat{assumption}{\nudt@cap@assumption~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{assumption}{\nudt@cap@assumption~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{conjecture}{#2\nudt@cap@conjecture~#1#3}
\crefrangeformat{conjecture}{\nudt@cap@conjecture~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{conjecture}{\nudt@cap@conjecture~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{axiom}{#2\nudt@cap@axiom~#1#3}
\crefrangeformat{axiom}{\nudt@cap@axiom~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{axiom}{\nudt@cap@axiom~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{principle}{#2\nudt@cap@principle~#1#3}
\crefrangeformat{principle}{\nudt@cap@principle~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{principle}{\nudt@cap@principle~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{problem}{#2\nudt@cap@problem~#1#3}
\crefrangeformat{problem}{\nudt@cap@problem~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{problem}{\nudt@cap@problem~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{example}{#2\nudt@cap@example~#1#3}
\crefrangeformat{example}{\nudt@cap@example~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{example}{\nudt@cap@example~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{proof}{#2\nudt@cap@proof~#1#3}
\crefrangeformat{proof}{\nudt@cap@proof~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{proof}{\nudt@cap@proof~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{solution}{#2\nudt@cap@solution~#1#3}
\crefrangeformat{solution}{\nudt@cap@solution~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{solution}{\nudt@cap@solution~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Document Markup
% 中文标题名称设置
\renewcommand\contentsname{\nudt@cap@contentsname}
\renewcommand\listfigurename{\nudt@cap@listfigurename}
\renewcommand\listtablename{\nudt@cap@listtablename}
\renewcommand\refname{\nudt@cap@refname}
\renewcommand\indexname{\nudt@cap@indexname}
\renewcommand\figurename{\nudt@cap@figurename}
\renewcommand\tablename{\nudt@cap@tablename}
\renewcommand\appendixname{\nudt@cap@appendixname}
\renewcommand\abstractname{\nudt@cap@abstractname}

% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{第\arabic{section}章}
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\centering\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
   {3.25ex \@plus1ex \@minus .2ex}%
   {-1em}%
   {\normalfont\normalsize\bfseries}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define new environment and command
%% 摘要两个字设置为 4 号.
%% 定义摘要环境
\renewenvironment{abstract}{%
\if@twocolumn
    \section*{\abstractname}%
  \else
   \begin{center}%
  {\zihao{3}\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
   \end{center}%
   \quotation
  \fi}
  {\if@twocolumn\else\endquotation\newpage\null\fi}
\renewenvironment{quotation}
  {\list{}{\listparindent 2em%
   \itemindent \listparindent
   \rightmargin\z@
   \leftmargin\z@
   \parsep \z@ \@plus\p@}%
  \item\relax}
  {\endlist}

\newcommand\keywords[1]{%
  \renewcommand{\nudt@tokens@keywords}{#1}
  \par
  \vskip1ex
  {\noindent\zihao{-4}\heiti\nudt@cap@keywordsname：}~{\nudt@tokens@keywords}
  }
% 定义附录

\renewcommand{\setthesection}{\appendixname\Alph{section}}
\renewcommand\appendix{\par
  \setcounter{section}{0}%
  \gdef\thesection{\appendixname\@Alph\c@section}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Initialization
 %%%数学定理相关的常量
\newcommand*{\nudt@cap@definition}{定义}
\newcommand*{\nudt@cap@theorem}{定理}
\newcommand*{\nudt@cap@lemma}{引理}
\newcommand*{\nudt@cap@corollary}{推论}
\newcommand*{\nudt@cap@assumption}{假设}
\newcommand*{\nudt@cap@conjecture}{猜想}
\newcommand*{\nudt@cap@axiom}{公理}
\newcommand*{\nudt@cap@principle}{定律}
\newcommand*{\nudt@cap@problem}{问题}
\newcommand*{\nudt@cap@example}{例}
\newcommand*{\nudt@cap@proof}{证明}
\newcommand*{\nudt@cap@solution}{解}
 %%%  中文标题名称
 \numberwithin{table}{section}%公式按章节编号
\numberwithin{equation}{section}%公式按章节编号
\numberwithin{figure}{section}%图表按章节编号
\renewcommand {\thetable} {\arabic{section}-\arabic{table}}
\renewcommand {\thefigure} {\arabic{section}-\arabic{figure}}
\renewcommand {\theequation} {\arabic{section}.\arabic{equation}}

\newcommand*{\nudt@cap@contentsname}{目\quad 录}
\newcommand*{\nudt@cap@listfigurename}{插图清单}
\newcommand*{\nudt@cap@listtablename}{附表清单}
\newcommand*{\nudt@cap@refname}{参考文献}
\newcommand*{\nudt@cap@indexname}{索引}
\newcommand*{\nudt@cap@figurename}{图}
\newcommand*{\nudt@cap@tablename}{表}
\newcommand*{\nudt@cap@appendixname}{附录}
\newcommand*{\nudt@cap@abstractname}{摘\quad 要}
 %%%  中文关键字
\newcommand\nudt@tokens@keywords{}
\newcommand*{\nudt@cap@keywordsname}{\quad\zihao{-4}\heiti{关键字}}
\RequirePackage{titletoc}
\renewcommand\cftsecnumwidth{1.5cm}


%%%伪代码模板
\RequirePackage{algorithm}  
\RequirePackage{algorithmicx}  
\RequirePackage{algpseudocode}  
\RequirePackage{amsmath}  
\floatname{algorithm}{算法}  
\renewcommand{\algorithmicrequire}{\textbf{输入:}}  
\renewcommand{\algorithmicensure}{\textbf{输出:}}  
\endinput




  