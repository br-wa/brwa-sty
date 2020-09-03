\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{brwapset}[2020/09/01 0.0.0]

\LoadClass{article}

\RequirePackage{pgfopts}

\setlength{\parskip}{7pt}
\setlength{\parindent}{0pt}

\pgfkeys{
	/rcv/.cd,
	font/.store in=\rcv@fontfam,
	font=cambria,
	margin/.store in=\rcv@margin,
	margin=1in,
    classid/.store in=\rcv@classid,
    classid=\textcolor{red}{name your class},
    set/.store in=\rcv@set,
    set=0
}
\ProcessPgfOptions{/rcv}

\setcounter{section}{\rcv@set}

\RequirePackage{fontspec}
\setmainfont[
	Path=$HOME/texmf/tex/latex/brwa/.fonts/\rcv@fontfam/,
	UprightFont=*.ttf,
	BoldFont=*b.ttf,
    ItalicFont=*i.ttf,
    BoldItalicFont=*z.ttf,
]{\rcv@fontfam}
\RequirePackage[margin=\rcv@margin]{geometry}

\RequirePackage{brwa}

