\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{brwapset}[2020/09/01 0.0.0]

\LoadClass{article}

\RequirePackage{pgfopts}

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
    set=0
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

\RequirePackage{brwabase}
\PassOptionsToPackage{pset}{brwabox} \RequirePackage{brwabox}

