#!/bin/bash
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin:/usr/local/texlive/2022basic/bin/universal-darwin

cd "$(dirname "$BB_DOC_PATH")"
pandoc --css="${BB_DOC_PATH%%.*}.css" -f markdown --bibliography="/your.bib file" --citeproc --pdf-engine=xelatex --mathjax -o "${BB_DOC_PATH%%.*}".docx  && open "${BB_DOC_PATH%%.*}.docx"
