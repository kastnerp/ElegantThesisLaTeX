lualatex -synctex=1 -interaction=nonstopmode thesis
bibtex  thesis
makeindex  thesis
makeglossaries  thesis
lualatex -synctex=1 -interaction=nonstopmode thesis

