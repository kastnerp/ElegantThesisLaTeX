cls
lualatex.exe -synctex=1 -interaction=nonstopmode thesis
bibtex  thesis
makeindex  thesis
makeglossaries.exe  thesis
lualatex.exe -synctex=1 -interaction=nonstopmode thesis
call equations.bat