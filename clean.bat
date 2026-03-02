@echo off
setlocal
set ROOT=%~dp0
pushd "%ROOT%"
for %%F in (
  *.aux
  *.bbl
  *.bcf
  *.blg
  *.brf
  *.idx
  *.ilg
  *.ind
  *.lof
  *.log
  *.lol
  *.lot
  *.lpr
  *.nlo
  *.nls
  *.out
  *.pyg
  *.run.xml
  *.synctex
  *.synctex.gz
  *.synctex(busy)
  *.tdo
  *.toc
  *.fdb_latexmk
  *.fls
  *.glo
  *.glg
  *.gls
  *.acn
  *.acr
  *.alg
  *.slg
  *.syg
  *.syi
  *.mw
  *.bak
  *.sav
  *.tmp
) do del /q /f "%%F" 2>nul
del /q /f thesis.pdf 2>nul
del /q /f export_equations*.pdf 2>nul
if exist output-equations rmdir /s /q output-equations
popd
endlocal
