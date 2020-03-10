# Simple Makefile for all LaTeX documents in current directory, using latexmk
# 2019-01-18 Gabriel Indurskis, gindurskis@champlaincollege.qc.ca

# Note: one could simply use "latexmk" (with a properly set latexmkrc)
# but this allows some more configuration, and helps if the user is
# used to type "make"... ;-)


# -----------------------------------------------------------
# some general options
# -----------------------------------------------------------

BUILDDIR=BUILD

LATEX=pdflatex
LATEXOPT=--shell-escape
#NONSTOP=--interaction=nonstopmode
NONSTOP=--interaction=batchmode

LATEXMK=latexmk
LATEXMKOPT=-pdf -M -MP -MF $*.deps

# -----------------------------------------------------------
# get all tex-files and create pdf-target names for them
# -----------------------------------------------------------

# WARNING: patterns in make do NOT work with names containing spaces!
texfiles = $(wildcard Probability_Notes*.tex)
pdffiles = $(patsubst %.tex,%.pdf,$(texfiles))

# -----------------------------------------------------------
# define make target
# -----------------------------------------------------------

# copy all pdf-binaries to BUILDDIR directory
release: $(pdffiles)
	mkdir -p $(BUILDDIR)
	cp -a $(pdffiles) $(BUILDDIR)

all: pdf
pdf: $(pdffiles)

# -----------------------------------------------------------
# rule for pdf-files
# -----------------------------------------------------------

%.pdf : %.tex
	$(LATEXMK) $(LATEXMKOPT) $< 

# -----------------------------------------------------------

.PHONY : clean cleanall
clean:     # only removes temporary files
	latexmk -c
	rm -rf *.deps *~ *.comments

cleanall:  # also removes pdf-files
	latexmk -C
	rm -rf *.deps *~ *.comments $(BUILDDIR)

# -----------------------------------------------------------

-include *.deps
