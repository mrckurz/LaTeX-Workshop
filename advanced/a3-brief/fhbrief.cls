% ============================================================
%  fhbrief.cls - Briefpapier im Stil der FH Oberösterreich
%  (Startdatei zu A3)
%  Abschnitte 1 bis 4 sind vorgegeben, damit brief.tex sofort
%  kompiliert. Ergänzen Sie die Abschnitte 5 bis 10 laut README.
% ============================================================

% --- 1. Kopf der Klasse -------------------------------------
\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\ProvidesClass{fhbrief}[2026/11/23 v0.1 Briefpapier im FH-OOe-Stil]

% --- 2. Optionen --------------------------------------------
% Unbekannte Optionen (z. B. 11pt) an die Basisklasse weiterreichen
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% TODO: eigene Optionen "nologo" und "english" (Schalter mit \newif)
\ProcessOptions\relax

% --- 3. Basisklasse laden -----------------------------------
\LoadClass[a4paper]{article}

% --- 4. Pakete ----------------------------------------------
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{helvet}      % serifenlose Schrift
\RequirePackage{graphicx}    % Logo einbinden
\RequirePackage{xcolor}      % Farben
\RequirePackage{geometry}    % Seitenränder
\RequirePackage{fancyhdr}    % Kopf- und Fußzeilen
\renewcommand{\familydefault}{\sfdefault}

% --- 5. Farben ----------------------------------------------
% TODO: fhrot (RGB 192,0,0) und fhgrau (RGB 100,100,100)


% --- 6. Seitenlayout ----------------------------------------
% TODO: \geometry{...}, \parindent, \parskip


% --- 7. Sprachabhängige Texte -------------------------------
% TODO: \fhb@seitename und \fhb@gruss je nach Sprache


% --- 8. Briefdaten: Speicher und Benutzerbefehle ------------
% TODO: \absender, \empfaenger, \betreff, \datum, \gruss


% --- 9. Kopf- und Fußzeile ----------------------------------
% TODO: fancyhdr: Logo und rote Linie oben, Absender und Seite unten


% --- 10. Die Umgebung "brief" -------------------------------
% TODO: \newenvironment{brief}[1]{...}{...}


\endinput
