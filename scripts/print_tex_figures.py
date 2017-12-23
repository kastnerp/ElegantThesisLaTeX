#!/usr/bin/python

""" Find figs based on includegraphics in tex docs and prints the file names"""

import sys

filename = sys.argv[1]

with open(filename, "r") as f:
    lines = f.read()

parts = lines.split("includegraphics")
files = []
for p in parts[1:]:
    files.append(p[1+p.find("{"): p.find("}")])

files = sorted(files, key=lambda s: s.lower())

for f in files:
    print(f)