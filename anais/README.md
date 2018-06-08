### About

**Conference LaTeX Template** for assembling  publication of the conferences in one single pdf file with all proceedings.
Example conference (papers, titles, authors) are completely  randomly generated and having no real connection with reality, don't forget to edit it.

### Adding New Publication

1. Each publication should be placed into the folder **'papers'**.
2. Publication must be named due to the following template string: *conference_submission_&lt;number-of-publications&gt;.pdf*
3. Fields *'title'*, *'author'* must be extracted from publication and placed into **'conference_proceedings.tex'**file. Note that the proper section and proper format should be used (see examples).

### Software Setup and Use Pre-Shiped Scripts

#### Windows:
1. Install MikTex.
2. Configure environmental variables.
3. Run '_build.bat' in 'build-latex-win' directory.

#### Ubuntu (linux):
1. Install texlive-full
```
sudo apt-get install texlive-full
```
2. Run 'build-latex-unix.sh'
```
chmod +x build-latex-unix.sh
./build-latex-unix.sh
```

### Editing LaTeX template
For the further editing of the template the universal LaTeX editor [Texmaker](http://www.xm1math.net/texmaker/) can be used.


### Additional Information

Current work adopted from the LaTeX template found the "confproc" package description [here](http://mirror.physik-pool.tu-berlin.de/tex-archive/macros/latex/contrib/conferences/confproc/confproc.pdf)

### Credits
* Papers were geenrated by [SCIgen - An Automatic CS Paper Generator](http://pdos.csail.mit.edu/scigen/) papers auto-gen service.


### Known Problems and Issues

* The list of the papers(title, authors, index) must be done manually (can me done in future by python script).
* [SOLVED] Main pdf file has links to the embedded papers, after click to the paper always moves to it.
	- [SOLUTION] **"confproc"** depends on the **"pdfpages"** package.Parameter called "linktodoc" inside "pdfpages" is responsible for putting links to the external pdf files. One of the options to disable it's such ability is to change "pdfpages.sty" file inside the **"&lt;path-to-miktex&gt;\'Miktex\tex\latex\pdfpages\'"** folder on the 1448 line with text below.
        + Original text
        ```latex
        \define@key{pdfpages}{linktodoc}[true]{\setboolean{AM@linktodoc}{#1}}
        ```
        + New text
        ```
        \define@key{pdfpages}{linktodoc}[false]{\setboolean{AM@linktodoc}{#1}}
        ```
