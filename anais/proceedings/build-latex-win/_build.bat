@echo off
REM @author Viktor Dmitriyev
REM @about Assembling one single pdf from the conferences's publications 
pushd ..
del conference_proceedings.pdf
call build-latex/_truncate.bat
REM call build-latex/_emf_to_eps_conversion.bat
call build-latex-win/_compile.bat
call build-latex-win/_copy.bat
call build-latex-win/_truncate.bat
call conference_proceedings.pdf
popd
call _truncate.bat
cls