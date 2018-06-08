# @author Viktor Dmitriyev
# @about Assembling one single pdf from the conferences's publications 
echo "Starting assembling proceedings ..."
cd ..
pdflatex conference_proceedings.tex
makeindex -s confproc2.ist conference_proceedings.idx
pdflatex conference_proceedings.tex
pdflatex conference_proceedings.tex
echo "Process of assembling proceedings finished ..."