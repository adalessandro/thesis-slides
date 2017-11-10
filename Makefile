.PHONY: clean strip all see re
SHELL=/bin/bash

files=$(wildcard *.tex)
pdfs=$(patsubst %.tex,%.pdf, $(files))
auxs=$(patsubst %.tex,%.aux, $(files))
logs=$(patsubst %.tex,%.log, $(files))
out=$(patsubst %.tex,%.out, $(files))
nav=$(patsubst %.tex,%.nav, $(files))
snm=$(patsubst %.tex,%.snm, $(files))
toc=$(patsubst %.tex,%.toc, $(files))

all: slides.pdf

%.pdf: %.tex math_preamble.tex
	xelatex $<
	xelatex $<

clean:
	rm -f $(pdfs)
	rm -f $(auxs)
	rm -f $(logs)
	rm -f $(out)
	rm -f $(nav)
	rm -f $(snm)
	rm -f $(toc)

strip:
	rm -f $(auxs)
	rm -f $(logs)

re: clean all
