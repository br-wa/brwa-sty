\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{brwapset}[2020/09/01 0.0.0]

\LoadClass{article}

\RequirePackage{pgfopts}

\newif\ifbps@fancy
\bps@fancyfalse

\setlength{\parskip}{7pt}
\setlength{\parindent}{0pt}

\pgfkeys{
	/bps/.cd,
	font/.store in=\bps@fontfam,
	font=cambria,
	margin/.store in=\bps@margin,
	margin=1in,
    classid/.store in=\bps@classid,
    classid=\textcolor{red}{name your class},
    set/.store in=\bps@set,
    set=0,
	fancy/.code=\bps@fancytrue,
}
\ProcessPgfOptions{/bps}

\setcounter{section}{\bps@set}

\RequirePackage{fontspec}
\setmainfont[
	Path=$HOME/texmf/tex/latex/brwa/.fonts/\bps@fontfam/,
	UprightFont=*.ttf,
	BoldFont=*b.ttf,
    ItalicFont=*i.ttf,
    BoldItalicFont=*z.ttf,
]{\bps@fontfam}

\RequirePackage[margin=\bps@margin]{geometry}
\RequirePackage{fancyhdr}

\newcounter{curprob}
\NewDocumentCommand{\probdesc}{}{}
\ifbps@fancy
	\pagestyle{fancy}
	\lhead{Student: Brandon Wang, ID\#921202283}
	\rhead{Problem \arabic{section}.\arabic{curprob} (\probdesc)}
	\setlength{\headheight}{20pt}
	\setlength{\headsep}{3mm}
\fi

\RequirePackage{brwabase}
\PassOptionsToPackage{pset}{brwabox} 
\RequirePackage{brwabox}

