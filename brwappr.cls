\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{brwappr}[2020/09/01 0.0.0]

\LoadClass{article}

\RequirePackage{pgfopts}

\setlength{\parskip}{7pt}
\setlength{\parindent}{0pt}

\pgfkeys{
	/bpr/.cd,
	font/.store in=\bpr@fontfam,
	font=cambria,
	margin/.store in=\bpr@margin,
	margin=1in
}
\ProcessPgfOptions{/bpr}

\RequirePackage{fontspec}
\setmainfont[
	Path=$HOME/texmf/tex/latex/brwa/.fonts/\bpr@fontfam/,
	UprightFont=*.ttf,
	BoldFont=*b.ttf,
    ItalicFont=*i.ttf,
    BoldItalicFont=*z.ttf,
]{\bpr@fontfam}
\RequirePackage[margin=\bpr@margin]{geometry}

\RequirePackage{brwabase}
