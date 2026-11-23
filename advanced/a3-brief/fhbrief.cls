% ============================================================
%  fhbrief.cls - Briefpapier im Stil der FH Oberösterreich
%  (Musterlösung zu A3, LaTeX-Workshop)
%
%  Eine Klasse legt das Grundgerüst eines Dokuments fest und wird
%  mit \documentclass{fhbrief} geladen. Diese Klasse baut auf der
%  Standardklasse "article" auf und ergänzt:
%    - Seitenlayout mit Logo-Kopfzeile und Absender-Fußzeile
%    - Befehle für Absender, Empfänger, Betreff, Datum, Gruß
%    - die Umgebung "brief", die alles zusammensetzt
%
%  Verwendung:
%    \documentclass[11pt]{fhbrief}
%    \empfaenger{Frau\\Erika Musterfrau\\Musterweg 1\\4020 Linz}
%    \betreff{Einladung}
%    \begin{document}
%    \begin{brief}{Sehr geehrte Frau Musterfrau,}
%      Text ...
%    \end{brief}
%    \end{document}
%
%  Optionen:
%    nologo      kein Logo in der Kopfzeile (Text als Ersatz)
%    english     englische Beschriftungen und Trennregeln
%    alle anderen Optionen (z. B. 11pt, 12pt) gehen an "article"
% ============================================================

% --- 1. Kopf der Klasse -------------------------------------
\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\ProvidesClass{fhbrief}[2026/11/23 v1.0 Briefpapier im FH-OOe-Stil]

% --- 2. Optionen --------------------------------------------
% Schalter für die eigenen Optionen (Standard: Logo an, Deutsch).
\newif\iffhb@logo     \fhb@logotrue
\newif\iffhb@english  \fhb@englishfalse

\DeclareOption{nologo}{\fhb@logofalse}
\DeclareOption{english}{\fhb@englishtrue}
% Unbekannte Optionen an die Basisklasse weiterreichen.
% So funktionieren 10pt, 11pt, 12pt, twoside usw. weiterhin.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% --- 3. Basisklasse laden -----------------------------------
% \LoadClass darf nur einmal vorkommen. Alles, was "article"
% kann, steht danach auch in fhbrief zur Verfügung.
\LoadClass[a4paper]{article}

% --- 4. Pakete ----------------------------------------------
\RequirePackage[T1]{fontenc}
\iffhb@english
  \RequirePackage[english]{babel}
\else
  \RequirePackage[ngerman]{babel}
\fi
\RequirePackage{helvet}      % serifenlose Schrift (Helvetica-Klon)
\RequirePackage{graphicx}    % Logo einbinden
\RequirePackage{xcolor}      % Farben
\RequirePackage{geometry}    % Seitenränder
\RequirePackage{fancyhdr}    % Kopf- und Fußzeilen

% Serifenlose Schrift als Standardschrift des Dokuments
\renewcommand{\familydefault}{\sfdefault}

% --- 5. Farben ----------------------------------------------
\definecolor{fhrot}{RGB}{192,0,0}
\definecolor{fhgrau}{RGB}{100,100,100}

% --- 6. Seitenlayout ----------------------------------------
% top: Platz für die Kopfzeile mit Logo, headheight: Höhe der
% Kopfzeile (muss mindestens so hoch sein wie das Logo).
\geometry{
  left=25mm, right=20mm,
  top=42mm,  bottom=32mm,
  headheight=16mm, headsep=12mm,
  footskip=14mm
}
% Briefe: kein Einzug am Absatzanfang, dafür Abstand zwischen Absätzen
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6\baselineskip}

% --- 7. Sprachabhängige Texte -------------------------------
% Feste Wörter stehen in Makros. So lassen sie sich an einer
% Stelle umschalten (und bei Bedarf im Dokument überschreiben).
\iffhb@english
  \newcommand{\fhb@seitename}{Page}
  \newcommand{\fhb@gruss}{Kind regards,}
\else
  \newcommand{\fhb@seitename}{Seite}
  \newcommand{\fhb@gruss}{Mit freundlichen Grüßen}
\fi

% --- 8. Briefdaten: Speicher und Benutzerbefehle ------------
% Muster: Ein interner Befehl (\fhb@...) speichert den Wert,
% ein Benutzerbefehl (\betreff{...}) überschreibt ihn.

% Absender mit Standardwerten. \absender{Name}{Straße}{PLZ Ort}
\newcommand{\fhb@absname}{FH-Prof. Dr. Marc Kurz}
\newcommand{\fhb@absstrasse}{Softwarepark 11}
\newcommand{\fhb@absort}{4232 Hagenberg}
\newcommand{\absender}[3]{%
  \renewcommand{\fhb@absname}{#1}%
  \renewcommand{\fhb@absstrasse}{#2}%
  \renewcommand{\fhb@absort}{#3}%
}

% Empfängeradresse, Zeilen mit \\ trennen
\newcommand{\fhb@empfaenger}{}
\newcommand{\empfaenger}[1]{\renewcommand{\fhb@empfaenger}{#1}}

% Betreff (leer = keine Betreffzeile)
\newcommand{\fhb@betreff}{}
\newcommand{\betreff}[1]{\renewcommand{\fhb@betreff}{#1}}

% Datum, Standard: heutiges Datum
\newcommand{\fhb@datum}{\today}
\newcommand{\datum}[1]{\renewcommand{\fhb@datum}{#1}}

% Grußformel, Standard je nach Sprache
\newcommand{\gruss}[1]{\renewcommand{\fhb@gruss}{#1}}

% --- 9. Kopf- und Fußzeile ----------------------------------
\pagestyle{fancy}
\fancyhf{}                              % alle Felder leeren
\renewcommand{\headrulewidth}{0pt}      % Standardlinien von fancyhdr aus
\renewcommand{\footrulewidth}{0pt}

% Kopfzeile: links das Logo, rechts daneben eine rote Linie bis
% zum Seitenrand (wie auf den Titelfolien der FH OÖ).
% \IfFileExists prüft, ob die Logodatei vorhanden ist. Fehlt sie,
% erscheint Ersatztext statt einer Fehlermeldung.
% \leaders\hrule ... \hfill füllt den restlichen Platz mit einer Linie;
% height/depth legen fest, in welcher Höhe sie verläuft.
\newcommand{\fhb@logo}{%
  \iffhb@logo
    \IfFileExists{fh-logo.jpg}%
      {\includegraphics[height=13mm]{fh-logo.jpg}}%
      {\textbf{FH Oberösterreich}}%
  \else
    \textbf{FH Oberösterreich}%
  \fi
}
\fancyhead[L]{%
  \makebox[\textwidth][l]{%
    \fhb@logo\hspace{6mm}%
    {\color{fhrot}\leaders\hrule height 7.1mm depth -6.5mm\hfill\kern0pt}%
  }%
}

% Fußzeile: rote Linie, darunter Absender (links) und Seitenzahl (rechts)
\fancyfoot[L]{%
  \parbox[t]{\textwidth}{%
    {\color{fhrot}\rule{\textwidth}{0.6pt}}\\[1mm]
    \footnotesize\color{fhgrau}%
    \fhb@absname\ \textbullet\ \fhb@absstrasse\ \textbullet\ \fhb@absort
    \hfill \fhb@seitename\ \thepage
  }%
}

% --- 10. Die Umgebung "brief" -------------------------------
% \begin{brief}{Anrede} ... \end{brief}
% Beginn: neue Seite, Adressfeld, Datum, Betreff, Anrede.
% Ende:   Grußformel und Name des Absenders.
% Jeder Brief beginnt auf einer neuen Seite mit Seitenzahl 1.
% Dadurch eignet sich die Umgebung auch für Serienbriefe (A4).
\newenvironment{brief}[1]{%
  \clearpage
  \setcounter{page}{1}%
  % Adressfeld: kleine Rücksendezeile, darunter der Empfänger.
  % Die feste Höhe (40 mm) hält den Brieftext immer an derselben Stelle.
  \begin{minipage}[t][40mm][t]{85mm}
    {\tiny\color{fhgrau}\underline{\fhb@absname, \fhb@absstrasse, \fhb@absort}}\par
    \vspace{3mm}
    \fhb@empfaenger
  \end{minipage}
  \par
  % Datum rechtsbündig
  \hfill \fhb@absort, \fhb@datum \par
  \vspace{6mm}
  % Betreffzeile nur ausgeben, wenn ein Betreff gesetzt wurde
  \ifx\fhb@betreff\@empty\else
    \textbf{\fhb@betreff}\par
    \vspace{4mm}
  \fi
  #1\par
}{%
  \par
  \vspace{6mm}
  \fhb@gruss\par
  \vspace{12mm}%               Platz für die Unterschrift
  \fhb@absname\par
  \clearpage
}

\endinput
