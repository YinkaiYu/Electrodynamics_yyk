\ProvidesClass{electrodynamics}
\LoadClass[a4paper, UTF8, 12pt, scheme=chinese, oneside]{ctexbook}
\usepackage{xeCJK,amsmath,paralist,enumerate,booktabs,multirow,graphicx,subfig,setspace,listings,lastpage,hyperref,indentfirst,bm,amssymb,mathrsfs}

% 页边距
\usepackage{geometry}%用于设置上下左右页边距
    \geometry{left=2.5cm,right=2.5cm,top=2.9cm,bottom=2.7cm}
    % \addtolength{\topmargin}{-6.5764pt}
    \setlength{\headheight}{18.5764pt}

% 页眉页脚
\usepackage{fancyhdr}
\usepackage{graphicx}
%     \fancypagestyle{plain}{
%         \fancyhf{}
%         % \chead{\includegraphics[height=0.5cm]{img/页眉.png}}
%         \chead{\emph{\leftmark}}
%         \renewcommand{\headrulewidth}{0pt}
%         \cfoot{\thepage}
%         \lhead{}
%         \rhead{}
%         \lfoot{}
%         \rfoot{}
%     }
%     \pagestyle{plain}
\pagestyle{fancy}
    \fancyhf{}
    % \fancyhead[]{左页眉}
    % \fancyhead[R]{右页眉}
    \fancyhead[C]{\emph{\leftmark}}
    % \renewcommand{\headrulewidth}{0pt}
    % \fancyfoot[L]{左页脚}
    \fancyfoot[C]{\thepage} % 页码
    % \fancyfoot[R]{右页脚}
    
% 标题
\newcommand \kai{
    \CJKfontspec{AR PL KaitiM GB}
    \fontsize{14pt}{0}
}

\newcommand \electrotitle{
    
    \begin{center}
        \LARGE\textbf{电动力学作业}
    \end{center}
    
    \begin{center}
    	\begin{tabular}{lll}
        	{\kai  学年学期：\textbf{2022}年第\textbf{1}学期} & $\qquad\quad$ &
        	{\kai $\qquad$姓\hphantom{大佬}名：\name{}}    	\\
        	{\kai 学~院/系：{物理学院}} & $\qquad$ & 
        	{\kai $\qquad$学\hphantom{大佬}号：\sysuID{}}\\
        	{\kai 作业编号：\worknum{}} & $\qquad$ & 
        	{\kai $\qquad$年级专业：20级物理系}\\
        	{\kai 交作业时间：\today} & $\qquad$ & 
        	{\kai $\qquad$班\hphantom{大佬}别：\class{}班}\\
        	{\kai {任课老师}：李志兵，侯玉升} & $\qquad$ & 
        	{\kai }
    	\end{tabular}
    	\rule{14.5cm}{0.05em} 
    \end{center}
    
}


% “题目”环境（v2）
\usepackage{amsthm}
\newtheorem{QuestionEnv}{题}


% “题目”、“子题目”（v6）
\ctexset { section = { number=\arabic {section}, name={\bfseries ,.},format={\kaishu \normalsize } } }
\ctexset { subsection = { number=\arabic {subsection},name={\bfseries (,)},format={\kaishu \normalsize } } }
% \CTEXsetup[name={\bfseries,.},format={\kaishu\normalsize}]{section}
% \CTEXsetup[number=\arabic{subsection},name={\bfseries(,)},format={\kaishu\normalsize}]{subsection}
\newcommand{\question}[1]{\section{#1}}
\newcommand{\subquestion}[1]{\subsection{#1}}

% equation等环境的简记，主要是解决section中不能插入公式的问题（v6）
\newcommand{\nota}[1]{\texorpdfstring{$#1$}{}}
\newcommand{\equa}[1]{\texorpdfstring{
    \begin{equation}
        #1
    \end{equation}
}{}}

% 超链接颜色（v6）
\hypersetup{
    colorlinks  = true,
    linkcolor   = blue,
    filecolor   = blue,      
    urlcolor    = blue,
    citecolor   = cyan,
    CJKbookmarks= true,
    breaklinks  = true,
}

% 脚注
\usepackage[bottom]{footmisc}

% 支持狄拉克符号
\usepackage{braket}

% 计数器
\numberwithin{equation}{chapter}%公式按章节编号
\numberwithin{figure}{chapter}%图表按章节编号

% 代码 4.2专用
\usepackage{minted}
\newminted[matcode]{matlab}{
    linenos=false,
    numberblanklines=false,
    % numbersep=5pt,
    gobble=0,
    % frame=leftline, framerule=0.4pt, framesep=2mm,
    % frame=lines, framerule=0pt,framesep=2mm,
    frame=none,
    funcnamehighlighting=true,
    tabsize=4,
    mathescape=true,
    samepage=false,
    showspaces=false,
    showtabs,obeytabs,
    texcl=false,
    autogobble,breaklines,breakbytokenanywhere,
}

% 缩进占位符 2022/6/19 total
\def \suojin{\hphantom{大佬}}