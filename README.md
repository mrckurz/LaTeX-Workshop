# LaTeX Workshop — Musterlösungen

Dies ist die **Lösungsversion** des LaTeX-Workshops.  
Sie enthält ausgearbeitete Beispiele, Formeln, Tabellen und Befehle zu allen Aufgaben — inklusive der erweiterten Bonusaufgaben.

---

## 🚀 Einstieg — Minimales Dokument

```latex
\documentclass[a4paper,11pt]{article}
\begin{document}
Hallo Welt! Dies ist mein erstes LaTeX-Dokument.
\end{document}
```

---

## 📘 Einheit 1 — Grundstruktur & Formatierung

### 🧩 Aufgabe 1 — Musterlösung
```latex
\documentclass[a4paper,11pt]{article}
\title{Mein erstes LaTeX-Dokument}
\author{Max Mustermann}
\date{\today}

\begin{document}
\maketitle

\section{Einleitung}
Dies ist ein Beispiel für einen einfachen Text in LaTeX. Hier kann man 
\textbf{Wörter fett} oder \emph{kursiv} darstellen.

\section{Hauptteil}
Hier folgt eine Aufzählung:
\begin{itemize}
  \item Punkt 1
  \item Punkt 2
  \item Punkt 3
\end{itemize}
\end{document}
```

💡 **Tipp:** Durch `\maketitle` wird automatisch Titel, Autor und Datum angezeigt.

---

## 🧮 Einheit 2 — Mathe, Tabellen & Abbildungen

### 🧩 Aufgabe 2 — Formeln
```latex
\documentclass{article}
\usepackage{amsmath}
\begin{document}

Die wohl bekannteste Gleichung ist:
\[
E = mc^2
\]

Ein Beispiel für eine Integralgleichung:
\[
\int_0^\infty e^{-x^2}\, dx = \frac{\sqrt{\pi}}{2}
\]

\end{document}
```

---

### 🧩 Aufgabe 3 — Tabelle
```latex
\documentclass{article}
\begin{document}
\begin{table}[h]
\centering
\begin{tabular}{|l|c|r|}
\hline
Name & Wert & Einheit \\
\hline
Länge & 12 & m \\
Breite & 5 & m \\
Höhe & 2 & m \\
\hline
\end{tabular}
\caption{Beispieltabelle mit Messwerten}
\label{tab:werte}
\end{table}
\end{document}
```

💡 **Tipp:** Die `|`-Zeichen erzeugen vertikale Linien, `\hline` horizontale.

---

### 🧩 Aufgabe 4 — Abbildung
```latex
\documentclass{article}
\usepackage{graphicx}
\begin{document}

\begin{figure}[h]
  \centering
  \includegraphics[width=0.5\textwidth]{example-image}
  \caption{Beispielbild einer eingebundenen Grafik}
  \label{fig:bild}
\end{figure}

Abbildung~\ref{fig:bild} zeigt ein eingebettetes Beispielbild.

\end{document}
```

---

## 📚 Einheit 3 — Literatur, Pakete & Best Practices

### 🧩 Aufgabe 5 — Literaturverzeichnis
**main.tex**
```latex
\documentclass{article}
\usepackage[backend=biber,style=alphabetic]{biblatex}
\addbibresource{literatur.bib}

\begin{document}
Hier ein Zitat: \cite{lamport1994}.

\printbibliography
\end{document}
```

**literatur.bib**
```bibtex
@book{lamport1994,
  author = {Leslie Lamport},
  title = {LaTeX: A Document Preparation System},
  year = {1994},
  publisher = {Addison-Wesley}
}
```

💡 **Tipp:** Kompiliere mit `biber`, nicht mit `bibtex`, um das Literaturverzeichnis korrekt zu erzeugen.

---

## 💎 Erweiterte Bonusaufgaben — Musterlösungen

### 🧮 Bonusaufgabe 1 — Komplexe Formel mit Matrizen
```latex
\documentclass{article}
\usepackage{amsmath}
\begin{document}

\begin{equation}
A = 
\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9
\end{bmatrix},
\quad
\vec{x} =
\begin{bmatrix}
x_1 \\ x_2 \\ x_3
\end{bmatrix}
\quad \Rightarrow \quad
A\vec{x} = \vec{b}
\end{equation}

\end{document}
```

---

### 🧮 Bonusaufgabe 2 — Mehrzeilige und referenzierbare Formeln
```latex
\documentclass{article}
\usepackage{amsmath}
\begin{document}

\begin{align}
E &= mc^2 \label{eq:einstein}\\
F &= ma \label{eq:newton}\\
p &= mv \label{eq:impuls}
\end{align}

Gleichung~\eqref{eq:newton} zeigt das zweite Newtonsche Gesetz.

\end{document}
```

---

### 📊 Bonusaufgabe 3 — Tabelle mit mehrzeiligen Überschriften
```latex
\documentclass{article}
\usepackage{multirow, booktabs}
\begin{document}

\begin{table}[h]
\centering
\begin{tabular}{lcc}
\toprule
\multirow{2}{*}{Parameter} & \multicolumn{2}{c}{Messwerte} \\
\cmidrule(lr){2-3}
 & Versuch 1 & Versuch 2 \\
\midrule
Länge & 12.0 & 12.2 \\
Breite & 5.0 & 5.1 \\
Höhe & 2.1 & 2.0 \\
\bottomrule
\end{tabular}
\caption{Mehrzeilige Tabelle mit `multirow` und `booktabs`}
\end{table}

\end{document}
```

---

### 📊 Bonusaufgabe 4 — Tabellen mit Berechnungen
```latex
\documentclass{article}
\usepackage{array}
\begin{document}

\begin{table}[h]
\centering
\begin{tabular}{|p{4cm}|c|c|}
\hline
\textbf{Beschreibung} & \textbf{Formel} & \textbf{Ergebnis} \\
\hline
Fläche eines Kreises & $A = \pi r^2$ & $78.5$ \\
Umfang eines Kreises & $U = 2\pi r$ & $31.4$ \\
Volumen einer Kugel & $V = \frac{4}{3}\pi r^3$ & $523.6$ \\
\hline
\end{tabular}
\caption{Tabelle mit gemischten Formeln und Text}
\end{table}

\end{document}
```

---

### 🔧 Bonusaufgabe 5 — Eigene Umgebung und Befehlsdefinition
```latex
\documentclass{article}
\usepackage{amsthm}
\newtheorem{definition}{Definition}
\newcommand{\vect}[1]{\boldsymbol{#1}}

\begin{document}

\begin{definition}[Vektor]
Ein \emph{Vektor} ist ein Element eines Vektorraums.
\end{definition}

Ein Beispiel für einen Vektor: $\vect{v} = (1,2,3)$.

\end{document}
```

💡 **Tipp:** Mit `amsthm` lassen sich auch Umgebungen wie „Satz“ oder „Beweis“ leicht erstellen.

---

## 📄 Lizenz
Dieses Material steht unter CC BY-SA 4.0.  
Erstellt von **Marc Kurz** (2025).
