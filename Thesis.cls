%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template. 
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}


\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}

\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  { 3.5cm}  % left margin
                        { 2.5cm}  % top margin
                        { 2.5cm}  % right margin
                        { 2.5cm}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}

\usepackage{enumitem}
\usepackage{ragged2e}
\usepackage{tabularx}
\usepackage{tabu}
\usepackage{soul}
\usepackage [english]{babel}
\usepackage [autostyle]{csquotes}
\usepackage[normalem]{ulem}
\usepackage{umoline}


\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\rollno}[1]{\def\rollnumber{#1}}
\newcommand*{\unisite}[1]{\def\univsite{#1}}
\newcommand*{\depsite}[1]{\def\deptsite{#1}}
\newcommand*{\placeshrt}[1]{\def\placesh{#1}}
\newcommand*{\placelng}[1]{\def\placeln{#1}}
\newcommand*{\datesub}[1]{\def\datesubs{#1}}
\newcommand*{\semsub}[1]{\def\semsubs{#1}}
\newcommand*{\degreemajor}[1]{\def\degreenamemajor{#1}}
\newcommand*{\coursecd}[1]{\def\coursecds{#1}}
\newcommand*{\datesig}[1]{\def\datesign{#1}}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------

\thesistitle{Thesis Title} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\supervisor{Supervisor} % You supervisor's name - this is used in the title page
%-------------------------------------------------   
\examiner{} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------   
\degree{Degree} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------   
\authors{Author} % Your name - this is used in the title page and abstract
%-------------------------------------------------   
\rollno{Roll No.} % Your name - this is used in the title page and abstract
%-------------------------------------------------   
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------   
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------   
\keywords{Keywords} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------   
\university{\texorpdfstring{\href{\univsite} % Your university's URL
                {University Name}} % Your university's name - this is currently used in the title page
                {University Name}}
%-------------------------------------------------   
\UNIVERSITY{\texorpdfstring{\href{\univsite} % Your university's URL
                {\MakeUppercase{\univname}}} % Your university's name in capitals - this is currently used in the abstract page
                {\MakeUppercase{\univname}}}
%-------------------------------------------------                
\department{\texorpdfstring{\href{\deptsite} % Your department's URL
                {Department Name}} % Your department's name - used in the title page and abstract
                {Department Name}}
%-------------------------------------------------                
\DEPARTMENT{\texorpdfstring{\href{\deptsite} % Your department's URL
                {\MakeUppercase{\deptname}}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {\MakeUppercase{\deptname}}}
%-------------------------------------------------                

% The default title page, this is not used in this www.latextemplates.com version            
\renewcommand\maketitle{
\hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \btypeout{Title Page}
  \thispagestyle{empty}
\begin{titlepage}
\begin{spacing}{1}
\centering
		
	
\large{\bfseries \@title \par}
\vfill


\normalsize{\coursecds report submitted to \par
\univname \par
in fulfilment for the award of the degree of \par 
\degreename \par
 in \par 
\degreenamemajor \par
}
\vfill

{\bfseries
by \par
\authornames \par
(\rollnumber) \par
}


\vfill
{\bfseries
Under the supervision of \par
\supname \par
}
\vfill
\includegraphics[height=4cm]{logo.jpg}\par

\vfill
	
{\bfseries
\deptname \par
\univname \par
\semsubs \par
\datesubs \par
}

\end{spacing}

\end{titlepage}
}
%\renewcommand\maketitle{
%  \btypeout{Title Page}
%  \hypersetup{pdftitle={\@title}}
%  \hypersetup{pdfsubject=\subjectname}
%  \hypersetup{pdfauthor=\authornames}
%  \hypersetup{pdfkeywords=\keywordnames}
%  \thispagestyle{empty}
%  \begin{titlepage}
%    \let\footnotesize\small
%    \let\footnoterule\relax
%    \let \footnote \thanks
%    \setcounter{footnote}{0}
%    \null\vfil
%    \vskip 60\p@
%    \begin{center}
%      \setlength{\parskip}{0pt}
%      {\large\textbf{\UNIVNAME}\par}
%      \vfill
%      {\huge \bf \@title \par}
%      \vfill
%      {\LARGE by \par}
%      \smallskip
%      {\LARGE \authornames \par}
%      \vfill
%      {\large A thesis submitted in partial fulfillment for the \par}
%      {\large degree of \degreename \par}
%      \bigskip
%      \bigskip
%      {\large in the \par}
%      {\large \facname \par}
%      {\large \deptname \par} 
%      \bigskip
%      \bigskip
%      \bigskip
%      {\Large \@date \par}
%      \bigskip
%    \end{center}
%    \par
%    \@thanks
%    \vfil\null
%  \end{titlepage}
%  \setcounter{footnote}{0}%
%  \global\let\thanks\relax
%  \global\let\maketitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\@title\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
%  \cleardoublepage
%}
\newcommand\Declaration[1]{
\btypeout{Declaration}
\addtotoc{Declaration}
\thispagestyle{plain}
%\null\vfil
%\vskip 60\p@
\begin{center}
\large{\bfseries DECLARATION}
\end {center}
\vspace{1cm}
I certify that\par
\begin{enumerate}[label=(\alph*)]
\item The work contained in this report has been done by me under the guidance of my supervisor.
\item The work has not been submitted to any other Institute for any degree or diploma.
\item I have conformed to the norms and guidelines given in the Ethical Code of Conduct of the Institute.
\item Whenever I have used materials (data, theoretical analysis, figures, and text) from other sources, I have given due credit to them by citing them in the text of the thesis and giving their details in the references. Further, I have taken permission from the copyright owners of the sources, whenever necessary.
\end{enumerate}
\vfill
Date: \datesign\hfill (\authornames)\par
\vspace{-15pt}
Place: \placesh \hfill (\rollnumber)%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
\cleardoublepage
}

%----------------------------------------------------------------------------------------
%	TITLE PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{titlepg}
{
\hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \btypeout{Title Page}
  \thispagestyle{empty}
\begin{titlepage}
\begin{spacing}{1}
\centering
		
	
\large{\bfseries \@title \par}
\vfill


\normalsize{{\coursecds} report submitted to \par
\univname \par
in partial fulfilment for the award of the degree of \par 
\degreename \par
 in \par 
\degreenamemajor \par
}
\vfill

{\bfseries
by \par
\authornames \par
(\rollnumber) \par
}


\vfill
{\bfseries
Under the supervision of \par
\supname \par
}
\vfill
\includegraphics[height=4cm]{logo.jpg}\par

\vfill
	
{\bfseries
\deptname \par
\univname \par
\semsubs \par
\datesubs \par
}

\end{spacing}

\end{titlepage}
%\null\vfil
%\cleardoublepage
}
%----------------------------------------------------------------------------------------

%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{plain}
  %\null\vfil
  \begin{flushleft}
    \setlength{\parskip}{0pt}
    %{\normalsize \UNIVNAME \par} % University name in capitals
    %\bigskip
    {\centering{\huge{\textit{Abstract}}} \par}
    \bigskip
    \HRule \\[0.4cm] % Horizontal line
		Name of the student:	 \textbf{\authornames}	\hfill Roll No: \textbf{\rollnumber} \\
		Degree for which submitted:  \textbf{\degreename} \\
		Department:  \textbf{\deptname} \\
		Thesis title: \textbf{\@title}\\
		Thesis supervisor:  \textbf{\supname}\\
		Month and year of thesis submission: \textbf{{{\datesubs}}\\[0.4cm] }
		\HRule \\[1.5cm] % Horizontal line	
	
  \end{flushleft}
}
%----------------------------------------------------------------------------------------

%----------------------------------------------------------------------------------------
%	CERTIFICATE PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{certificate}
{
  \btypeout{Certificate Page}
  \thispagestyle{plain}
\begin{center}
\begin{spacing}{1}\bfseries\large{\DEPTNAME\par
\UNIVNAME\par
\MakeUppercase{\placeln}\par}
\end{spacing}
\vspace{0.8cm}
\includegraphics[height=5cm]{logo.jpg}\par
\vspace{0.5cm}
\textit{\textbf {\large{CERTIFICATE}}}\par
\end{center}
%\vspace{1cm}
%\newcommand*\together[1]{#1}
%\soulregister\together{1}
%\soulregister{\authornames}{0}

This is to certify that the project report entitled \enquote{\textbf{\ul\ttitle}} submitted by \textbf{\ul\authornames} (Roll No. \rollnumber) to {\univname} towards partial fulfilment of requirements for the award of degree of {\degreename} in {\degreenamemajor} is a record of bona fide work carried out by him under my supervision and guidance during \semsubs.

%\vspace{4cm}
\vfill
\renewcommand{\arraystretch}{0.75}
%\begin{tabularx}{\textwidth}{|l|>{\raggedleft\arraybackslash}X|}
\begin{tabu} to \textwidth{X[l]X[1.15c]}
&\supname\\
Date: \datesign&\deptname\\
Place: \placesh&\univname\\                                                                                                                &\placeln\\
%\end{tabularx}
\end{tabu}
\vfil\vfil\null
\cleardoublepage
}
%----------------------------------------------------------------------------------------
%	DECLARATION DESIGN
%----------------------------------------------------------------------------------------
%\newenvironment{declrpg}
%{
%\begin{titlepage}
%\begin{spacing}{1.5}
%		
%\begin{center}
%\large{\bfseries DECLARATION}
%\end {center}
%\vspace{1cm}
%
%
%I certify that\par
%\begin{enumerate}[label=(\alph*)]
%\item The work contained in this report has been done by me under the guidance of my supervisor.
%\item The work has not been submitted to any other Institute for any degree or diploma.
%\item I have conformed to the norms and guidelines given in the Ethical Code of Conduct of the Institute.
%\item Whenever I have used materials (data, theoretical analysis, figures, and text) from other sources, I have given due credit to them by citing them in the text of the thesis and giving their details in the references. Further, I have taken permission from the copyright owners of the sources, whenever necessary.
%\end{enumerate}
%
%\vfill
%
%
%
%
%Date: \hfill (\authorname)\par
%Place: \placesh \hfill (\rollnumber)
%
%	
%
%\end{spacing}
%
%\end{titlepage}
%}

%----------------------------------------------------------------------------------------

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\addtotoc{Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
