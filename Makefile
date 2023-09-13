all: html pdf

html: index.html
index.html: index.Rmd *.bib
	Rscript -e "rmarkdown::render('index.Rmd')"

pdf: index.pdf
index.pdf: index.html
	Rscript pdf.R
