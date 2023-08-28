\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dense_template}

%% Packages
\LoadClass[11pt, letterpaper]{article}
\RequirePackage[margin=2cm]{geometry}
\RequirePackage{multicol,pst-plot}
\RequirePackage[utf8]{inputenc}
\RequirePackage{algpseudocode}
\RequirePackage{subcaption}
\RequirePackage{algorithm}
\RequirePackage{amsfonts}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{epsfig}

%% Pseudo-code re-commands
\renewcommand{\algorithmicrequire}{\textbf{Requiere:}}
\renewcommand{\algorithmicensure}{\textbf{Asegurar:}}
\renewcommand{\algorithmicend}{\textbf{Fin}}
\renewcommand{\algorithmicif}{\textbf{Si}}
\renewcommand{\algorithmicthen}{\textbf{Entonces}}
\renewcommand{\algorithmicelse}{\textbf{Si no}}
\newcommand{\algorithmicelsif}{\algorithmicelse\ \algorithmicif}
\newcommand{\algorithmicendif}{\algorithmicend\ \algorithmicif}
\renewcommand{\algorithmicfor}{\textbf{Para}}
\renewcommand{\algorithmicforall}{\textbf{Para todo}}
\renewcommand{\algorithmicdo}{\textbf{Hacer}}
\newcommand{\algorithmicendfor}{\algorithmicend\ \algorithmicfor}
\renewcommand{\algorithmicwhile}{\textbf{Mientras}}
\newcommand{\algorithmicendwhile}{\algorithmicend\ \algorithmicwhile}
\renewcommand{\algorithmicloop}{\textbf{Bucle}}
\newcommand{\algorithmicendloop}{\algorithmicend\ \algorithmicloop}
\renewcommand{\algorithmicrepeat}{\textbf{Repetir}}
\renewcommand{\algorithmicuntil}{\textbf{Hasta}}
\newcommand{\algorithmicprint}{\textbf{Imprimir}}
\renewcommand{\algorithmicreturn}{\textbf{Retornar}}
\newcommand{\algorithmictrue}{\textbf{Verdadero}}
\newcommand{\algorithmicfalse}{\textbf{Falso}}

\renewcommand\maketitle{
    \begin{flushleft}
        \name \\
        \code
    \end{flushleft}

    \begin{flushright}\vspace{-15mm}
        \includegraphics[height=2cm]{UDG.png}
    \end{flushright}
    
    \begin{center}\vspace{-1cm}
        \textbf{\large \school}\\
        \textbf{\large \course}\\
        \assignment
    \end{center}

    \begin{center}
    \rule{\linewidth}{0.1mm}
    \end{center}

}
