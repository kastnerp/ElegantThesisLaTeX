call lualatex -interaction=batchmode export_equations.tex
pdfcrop export_equations.pdf


mkdir output-equations
mgs -dNOPAUSE -q -sDEVICE=pnggray -r2000 -dBATCH -dFirstPage=1 -dLastPage=1000 "-sOutputFile=equation-%%03d.png" export_equations-crop.pdf
pdf2svg\pdf2svg.exe export_equations-crop.pdf equation-%03d.svg all
move *.png output-equations
move *.svg output-equations
del export_equations.pdf
