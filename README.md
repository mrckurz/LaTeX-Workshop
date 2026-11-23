# LaTeX Workshop — Musterlösungen

Dies ist die **Lösungsversion** des LaTeX-Workshops.  
Sie enthält ausgearbeitete Beispiele, Formeln, Tabellen und Befehle zu allen Aufgaben — inklusive der erweiterten Bonusaufgaben.  
Die Lösungen zum Teil **LaTeX Advanced** liegen zusätzlich als fertige Dateien im Ordner `advanced/`.

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

💡 **Tipp:** Kompilieren Sie mit `biber`, nicht mit `bibtex`, um das Literaturverzeichnis korrekt zu erzeugen. Lokal sind die Durchläufe `pdflatex` → `biber` → `pdflatex` nötig. Overleaf und `latexmk` erledigen das automatisch.

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
\caption{Mehrzeilige Tabelle mit \texttt{multirow} und \texttt{booktabs}}
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
\usepackage{amsmath} % stellt \boldsymbol bereit
\usepackage{amsthm} % für theorem-ähnliche Umgebungen
\usepackage{xcolor} % für farbige Boxen (optional)

% ---- Eigener Befehl ----
% Erzeugt fett gesetzte Vektoren mit \vect{x}
\newcommand{\vect}[1]{\boldsymbol{#1}}

% ---- Eigene Umgebung "beispiel" ----
\newenvironment{beispiel}[1][Beispiel]{%
  \par\vspace{1em}\noindent
  \color{blue}\textbf{#1:}\itshape\par
}{%
  \vspace{0.5em}\normalcolor\normalfont\par
}

% ---- Alternativ: theorem-basierte Umgebung ----
\newtheorem{definition}{Definition}

\begin{document}

\section*{Eigene Definition und Umgebung}

\begin{definition}[Vektor]
Ein \emph{Vektor} ist ein Element eines Vektorraums.
\end{definition}

Ein Beispiel für einen Vektor: $\vect{v} = (1,2,3)$.

\begin{beispiel}[Vektoren im Raum]
Sei $\vect{a} = (2,1,0)$ und $\vect{b} = (1,-1,3)$.
Dann gilt:
\[
\vect{a} + \vect{b} = (3,0,3)
\]
\end{beispiel}

\end{document}

```

💡 **Tipp:** Mit `amsthm` lassen sich auch Umgebungen wie „Satz“ oder „Beweis“ leicht erstellen.

---

## 🎓 LaTeX Advanced — Musterlösungen

Die Lösungen liegen als fertige Dateien im Ordner `advanced/`, unter denselben Pfaden wie die Startdateien im `main`-Branch. Alle `.sty`- und `.cls`-Dateien sind ausführlich kommentiert. Dieser Abschnitt nennt pro Aufgabe die Dateien, den Aufruf und die zentralen Stellen.

| Aufgabe | Lösungsdateien | Kompilieren (im jeweiligen Ordner) |
|---------|----------------|-------------------------------------|
| A1 | `advanced/a1-befehle/uebungsblatt.tex` | `pdflatex uebungsblatt.tex` |
| A2 | `advanced/a2-paket/mcstyle.sty`, `paket-test.tex` | zweimal `pdflatex paket-test.tex` |
| A3 | `advanced/a3-brief/fhbrief.cls`, `brief.tex` | `pdflatex brief.tex` |
| A4 | `advanced/a3-brief/serienbrief.tex`, `empfaenger.csv` | `pdflatex serienbrief.tex` |
| A5 | `advanced/a5-beamer/beamerthemeFH.sty`, `folien.tex` | `pdflatex folien.tex` |
| A6 | `advanced/a6-projekt/main.tex`, `abkuerzungen.tex`, `kapitel/*.tex` | `latexmk` (oder dreimal `pdflatex main.tex`) |
| A7 | `advanced/a6-projekt/.latexmkrc`, `.github/workflows/build.yml` | `latexmk` |
| A8 | `advanced/a8-typografie/typografie.tex` | `pdflatex typografie.tex` |

---

### 🔧 A1 — Befehle mit Logik

```latex
% Sternvariante: s liefert einen Wahrheitswert in #1
\NewDocumentCommand{\fh}{s}{%
  \IfBooleanTF{#1}%
    {University of Applied Sciences Upper Austria}%
    {FH Oberösterreich}%
}

\newcounter{aufgabe}
\newcounter{punkte}

% O{0}: optionales Argument mit Standardwert 0, m: Pflichtargument
\NewDocumentCommand{\aufgabe}{O{0} m}{%
  \stepcounter{aufgabe}%
  \addtocounter{punkte}{#1}%
  \subsection*{Aufgabe \theaufgabe: #2%
    \ifnum#1>0 %
      \hfill{\normalfont\small(#1~\ifnum#1=1 Punkt\else Punkte\fi)}%
    \fi}%
}

% Schleife: n Schreiblinien
\NewDocumentCommand{\antwortzeilen}{m}{%
  \par
  \foreach \i in {1,...,#1}{%
    \noindent\rule{0pt}{8mm}\rule{\linewidth}{0.4pt}\par
  }%
}
```

Erläuterungen:
- `\rule{0pt}{8mm}` ist eine unsichtbare Stütze. Sie sorgt für 8 mm Abstand zwischen den Linien.
- Nach `\ifnum#1>0` steht ein Leerzeichen und dann `%`. Das Leerzeichen beendet die Zahl, das `%` verhindert ein zusätzliches Leerzeichen im PDF.

---

### 📦 A2 — Eigenes Paket

Die zentralen Stellen aus `mcstyle.sty`:

```latex
% Optionen
\newif\ifmc@entwurf   \mc@entwurffalse
\newif\ifmc@sw        \mc@swfalse
\DeclareOption{entwurf}{\mc@entwurftrue}
\DeclareOption{sw}{\mc@swtrue}
\DeclareOption*{%
  \PackageWarning{mcstyle}{Unbekannte Option '\CurrentOption'}}
\ProcessOptions\relax

% Farbe je nach Option
\ifmc@sw
  \definecolor{fhrot}{RGB}{0,0,0}
\else
  \definecolor{fhrot}{RGB}{192,0,0}
\fi

% Punktesumme in die .aux-Datei schreiben und beim nächsten Lauf lesen
\AtEndDocument{%
  \immediate\write\@auxout{%
    \gdef\string\mc@gesamt{\the\value{punkte}}}%
}
\newcommand{\gesamtpunkte}{%
  \@ifundefined{mc@gesamt}{??}{\mc@gesamt}%
}
```

Erläuterungen:
- In der `.aux`-Datei steht nach dem ersten Lauf die Zeile `\gdef \mc@gesamt{4}`. LaTeX führt sie beim nächsten `\begin{document}` aus. Öffnen Sie die Datei `paket-test.aux` und suchen Sie diese Zeile.
- `\string\mc@gesamt` schreibt den Befehlsnamen als Text in die Datei, statt ihn auszuführen. `\the\value{punkte}` wird dagegen sofort durch die Zahl ersetzt.
- Die Umgebung `hinweis` speichert ihren Inhalt zuerst in einer Box (`lrbox`). Damit ist die Höhe bekannt, und der rote Balken (`\vrule width 3pt`) wird automatisch gleich hoch.

---

### ✉️ A3 — Eigene Klasse

Das Grundgerüst aus `fhbrief.cls`:

```latex
\ProvidesClass{fhbrief}[2026/11/23 v1.0 Briefpapier im FH-OOe-Stil]

\newif\iffhb@logo     \fhb@logotrue
\newif\iffhb@english  \fhb@englishfalse
\DeclareOption{nologo}{\fhb@logofalse}
\DeclareOption{english}{\fhb@englishtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[a4paper]{article}
```

Die Kopfzeile mit Logo und roter Linie:

```latex
\fancyhead[L]{%
  \makebox[\textwidth][l]{%
    \fhb@logo\hspace{6mm}%
    {\color{fhrot}\leaders\hrule height 7.1mm depth -6.5mm\hfill\kern0pt}%
  }%
}
```

Erläuterungen:
- `\makebox[\textwidth][l]{...}` erzeugt eine Box in voller Textbreite. Darin füllt `\leaders\hrule ... \hfill` den Platz rechts vom Logo mit einer Linie. Die Linie ist 0,6 mm dick (7,1 mm minus 6,5 mm) und verläuft auf halber Logohöhe.
- Die Umgebung `brief` beginnt mit `\clearpage` und `\setcounter{page}{1}`. Dadurch beginnt jeder Brief auf einer neuen Seite mit Seitenzahl 1. Das ist die Voraussetzung für den Serienbrief in A4.
- Das Adressfeld ist eine `minipage` mit fester Höhe (40 mm). So steht der Brieftext unabhängig von der Länge der Adresse immer an derselben Stelle.

---

### 📨 A4 — Serienbrief

```latex
\documentclass[11pt]{fhbrief}
\usepackage{csvsimple}
\betreff{Einladung zum \LaTeX-Workshop}

\begin{document}
\csvreader[head to column names]{empfaenger.csv}{}{%
  \empfaenger{\name\\\strasse\\\ort}%
  \begin{brief}{\anrede,}
    hiermit lade ich Sie zum \LaTeX-Workshop am Campus Hagenberg ein.

    Sie haben sich für das Thema \emph{\thema} interessiert.
    Dieses Thema ist Teil des Abschnitts \LaTeX{} Advanced.

    Ich freue mich auf Ihre Teilnahme.
  \end{brief}
}
\end{document}
```

Erläuterung: In `\name\\\strasse\\\ort` steht zwischen den Feldern jeweils `\\` (Zeilenumbruch). Direkt danach beginnt der nächste Befehl, daher die drei Backslashes hintereinander.

---

### 🖥️ A5 — Beamer

Die zentralen Stellen aus `beamerthemeFH.sty`:

```latex
\setbeamercolor{structure}{fg=fhrot}
\setbeamercolor{frametitle}{fg=black}
\setbeamercolor{block title}{fg=white,bg=fhrot}
\setbeamerfont{frametitle}{series=\bfseries,size=\Large}
\setbeamertemplate{navigation symbols}{}

\setbeamertemplate{footline}{%
  \leavevmode
  \hspace{5mm}%
  \raisebox{2mm}{\usebeamerfont{footline}\textcolor{fhgrau}{SEITE | \insertframenumber}}%
  \hspace{3mm}%
  {\color{fhrot}\leaders\hrule height 3.3mm depth -2.9mm\hfill\kern0pt}%
  \hspace{3mm}%
  \IfFileExists{fh-logo.jpg}{\includegraphics[height=6mm]{fh-logo.jpg}}{}%
  \hspace{5mm}%
  \vspace{2mm}%
}
```

Erläuterungen:
- Die Fußzeile verwendet dieselbe Linientechnik wie die Briefklasse.
- Die Titelfolie ist als eigene Vorlage `title page` definiert und wird im Dokument mit `\titlepage` ausgegeben.
- Die Folie „Overlays gezielt steuern“ erzeugt drei PDF-Seiten, weil die höchste verwendete Schrittnummer 3 ist.

---

### 🗂️ A6 — Großes Projekt

Die Präambel von `main.tex` (gekürzt):

```latex
\usepackage[textsize=footnotesize]{todonotes}
\usepackage[hidelinks]{hyperref}
\usepackage[acronym,nomain]{glossaries}
\makenoidxglossaries
\input{abkuerzungen}
\usepackage[ngerman]{cleveref}       % als letztes Paket laden

% \includeonly{kapitel/grundlagen}
```

Und der Dokumentteil:

```latex
\include{kapitel/einleitung}
\include{kapitel/grundlagen}
\include{kapitel/fazit}
\printnoidxglossary[type=\acronymtype,title=Abkürzungsverzeichnis]
```

Erläuterungen:
- Bei `\include` gibt man den Dateinamen ohne Endung an.
- Im Abkürzungsverzeichnis erscheinen nur Abkürzungen, die im Text mit `\gls` verwendet wurden.
- Für die Abgabe einer Arbeit: `\usepackage[disable]{todonotes}` blendet alle Notizen aus.

---

### ⚙️ A7 — Build und CI

`.latexmkrc` liegt in `advanced/a6-projekt`. Der Aufruf `latexmk` in diesem Ordner baut `main.pdf`, `latexmk -c` räumt auf.

Der Workflow `.github/workflows/build.yml` in diesem Branch baut alle Lösungsdokumente und stellt die PDFs als Artefakt bereit:

```yaml
name: LaTeX bauen
on: [push, workflow_dispatch]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Repository auschecken
        uses: actions/checkout@v6
      - name: Alle Lösungsdokumente bauen
        uses: xu-cheng/latex-action@v4
        with:
          work_in_root_file_dir: true
          root_file: |
            advanced/a1-befehle/uebungsblatt.tex
            advanced/a2-paket/paket-test.tex
            advanced/a3-brief/brief.tex
            advanced/a3-brief/serienbrief.tex
            advanced/a5-beamer/folien.tex
            advanced/a6-projekt/main.tex
            advanced/a8-typografie/typografie.tex
      - name: PDFs als Artefakt hochladen
        uses: actions/upload-artifact@v6
        with:
          name: latex-advanced-loesungen
          path: advanced/**/*.pdf
```

Erläuterungen:
- `on: [push, workflow_dispatch]`: Der Workflow läuft bei jedem Push und lässt sich zusätzlich von Hand im Reiter *Actions* starten.
- `root_file` nimmt mehrere Dateien entgegen. `work_in_root_file_dir: true` wechselt vor dem Bauen in den Ordner der jeweiligen Datei. Das ist nötig, damit `fhbrief.cls`, `mcstyle.sty` und das Logo gefunden werden.
- Die Action verwendet intern `latexmk` in einer vollständigen TeX-Live-Installation.
- Für ein einzelnes Dokument genügt die kürzere Fassung aus der Aufgabenstellung (mit `working_directory` und einer einzigen `root_file`).

---

### ✒️ A8 — Typografie

```latex
\usepackage{microtype}
\usepackage[autostyle]{csquotes}
\usepackage[locale=DE]{siunitx}
...
\enquote{Hallo Welt}
\num{1234567.89}
\qty{12.5}{\kilo\metre\per\hour}
\qtyrange{10}{20}{\celsius}
\qty{512}{\mega\byte}
...
\begin{tabular}{l S[table-format=3.2] S[table-format=2.1]}
  \toprule
  Gerät & {Startzeit in \unit{\milli\second}} & {Akku in \unit{\percent}} \\
  \midrule
  Smartphone A & 120.5  & 87.5 \\
```

Erläuterungen:
- `table-format=3.2` reserviert Platz für drei Stellen vor und zwei Stellen nach dem Komma.
- Im Quelltext schreibt man Zahlen immer mit Dezimalpunkt. Die Option `locale=DE` macht daraus in der Ausgabe ein Komma.
- `microtype` wirkt am stärksten mit skalierbaren Schriften, daher `\usepackage{lmodern}` in der Präambel.

---

## 📄 Lizenz
Dieses Material steht unter CC BY-SA 4.0.  
Erstellt von **Marc Kurz** (2025–2026).
