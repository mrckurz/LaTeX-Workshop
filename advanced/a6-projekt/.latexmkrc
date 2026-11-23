# ============================================================
#  .latexmkrc - Konfiguration für latexmk (A7)
#  latexmk liest diese Datei automatisch, wenn es in diesem
#  Ordner gestartet wird. Die Datei ist Perl-Code, Kommentare
#  beginnen mit #.
# ============================================================

# PDF direkt mit pdflatex erzeugen (entspricht der Option -pdf)
$pdf_mode = 1;

# Aufruf von pdflatex:
#   -interaction=nonstopmode  bei Fehlern nicht auf Eingabe warten
#   -file-line-error          Fehler im Format datei:zeile: meldung
#   -halt-on-error            beim ersten Fehler abbrechen
#   %O = Optionen von latexmk, %S = Quelldatei
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -halt-on-error %O %S';

# Hauptdatei: "latexmk" ohne Argument baut main.tex
@default_files = ('main.tex');

# Zusätzliche Hilfsdateien, die "latexmk -c" löschen soll
$clean_ext = 'acn acr alg glo gls glg ist tdo';
