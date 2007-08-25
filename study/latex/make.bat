@ECHO OFF
rem Batchdatei zur Erstellung meiner Diplomarbeit mit Glossar,
rem Inhaltsverzeichnis usw..

del *.log

rem LaTeX Vorlauf
latex main.tex
latex main.tex

rem Literaturverzeichnis erzeugen
bibtex main

rem Stichwortverzeichnis erzeugen
makeindex main

rem Glossar erzeugen
makeindex -s main.ist -t main.glg -o main.gls main.glo

rem DVI-Dokument erzeugen, Glossar einbinden und Literaturverzeichnis danach nochmal aktualisieren
latex main.tex
latex main.tex

rem PDF-Dokument erzeugen
pdflatex main.tex
pdflatex main.tex
pdflatex main.tex
del Mitarbeiterbindung_mit_Anreizsystemen.pdf
move main.pdf Mitarbeiterbindung_mit_Anreizsystemen.pdf
pause