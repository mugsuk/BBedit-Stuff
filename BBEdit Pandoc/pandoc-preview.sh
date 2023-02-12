#!/bin/bash
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin:/usr/local/texlive/2022basic/bin/universal-darwin

pandoc -f markdown+smart -t html --csl="/Users/murraysmith/Documents/Markdown/AMA (11th Ed.).csl" --bibliography="/your.bib file" --citeproc --pdf-engine=xelatex --mathjax --standalone
