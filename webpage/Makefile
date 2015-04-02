PANDOC = pandoc
PANDOC_HEAD = jsxgraph_head.html 
LIVESCRIPT = lsc
LS_FLAGS = -bc
LATEX = dvilualatex
LATEX_FLAGS =
BIB_FILE = 
CSL_FILE = 
CITATION_FLAGS = --biblio $(BIB_FILE) --csl $(CSL_FILE)
PANDOC_FLAGS = -H $(PANDOC_HEAD) --mathjax 
DVI_TO_SVG = dvisvgm
DVI_TO_SVG_FLAGS = --no-fonts

all: html

html: index.html 

index.html: index.md $(PANDOC_HEAD) eigval.js
	$(PANDOC) $(PANDOC_FLAGS) index.md -o index.html

eigval.js: eigval.ls
	$(LIVESCRIPT) $(LS_FLAGS) eigval.ls

clean:
	rm -rf *.dvi *.svg *.log *.aux index.html
