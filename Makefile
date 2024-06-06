all: html docx

html: index.html
index.html: index.Rmd *.bib
	Rscript -e "rmarkdown::render('index.Rmd', output_file = 'index.html')"

docx: index.docx
index.docx: index.html
	pandoc index.html -o index.docx

pdf: index.pdf
index.pdf: index.Rmd *.bib
	Rscript -e "rmarkdown::render('index.Rmd', output_format = 'vitae::moderncv')"

.PHONY: clean
clean:
	rm index.html index.docx index.pdf index.md index.tex
