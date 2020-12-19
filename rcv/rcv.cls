\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rcv}[2020/08/15 0.0.1]

\LoadClass{article}

\RequirePackage{pgfopts}
\RequirePackage{fontspec}
\RequirePackage{hyperref}

\pgfkeys{
    /rcv/.cd,
    font/.store in=\rcv@fontfam,
    font=cambria,
    margin/.store in=\rcv@margin,
    margin=1in,
    location/.code=PassOptionsToPackage{location=#1}{rcvbase}
}
\ProcessPgfOptions{/rcv}

\RequirePackage{fontspec}
\setmainfont[
    Path=$HOME/texmf/tex/latex/brwa/.fonts/\rcv@fontfam/,
    UprightFont=*.ttf,
    BoldFont=*b.ttf,
    ItalicFont=*i.ttf,
    BoldItalicFont=*z.ttf
]{\rcv@fontfam}
\RequirePackage[margin=\rcv@margin]{geometry}

\RequirePackage{rcvbase}

