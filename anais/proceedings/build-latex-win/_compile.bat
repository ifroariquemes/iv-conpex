@echo off
REM @author Viktor Dmitriyev
REM @about Assembling one single pdf from the conferences's publications 
echo 'Compiling LaTex to PDF. Please, wait ...'
pdflatex conference_proceedings
makeindex -s confproc2.ist conference_proceedings.idx
pdflatex conference_proceedings
pdflatex conference_proceedings
pdflatex conference_proceedings
pdflatex conference_proceedings
echo 'Ending...'
