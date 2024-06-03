.PHONY: phony

FIGURES = $(shell find . -name '*.svg')

PANDOCFLAGS =                        \
  --table-of-contents                \
  --pdf-engine=xelatex               \
  --from=markdown                    \
  --number-sections                  \
  --indented-code-classes=javascript \
  --highlight-style=monochrome       \
  -V documentclass=report            \
  -V papersize=A5                    \
  -V geometry:margin=1in

#   -V mainfont="Palatino"             \

all: phony output/notes.pdf output/notes.epub

output/notes.pdf: notes.md $(FIGURES) Makefile | output
		pandoc $< -o $@ $(PANDOCFLAGS)

output/notes.epub: notes.md $(FIGURES) Makefile | output
		pandoc $< -o $@ $(PANDOCFLAGS)

output:
		mkdir ./output

clean: phony
		rm -rf ./output

open: phony output/notes.pdf
		open output/notes.pdf
