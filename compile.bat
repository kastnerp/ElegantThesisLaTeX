cls
lualatex.exe -synctex=1 -interaction=nonstopmode thesis
bibtex  thesis
thesiskeindex  thesis
thesiskeglossaries.exe  thesis
lualatex.exe -synctex=1 -interaction=nonstopmode thesis
call equations.bat