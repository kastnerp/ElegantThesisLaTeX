# latexmkrc - deterministic LuaLaTeX build
 = 'lualatex -interaction=nonstopmode -synctex=1 %O %S';
 = 'bibtex %O %B';
 = 'makeindex %O -s %S %D';
 = 'makeglossaries %O %B';
 = 1;
 = 5;