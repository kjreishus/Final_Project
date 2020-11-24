#rule for making report
report.html: data.csv ReishusProjectRender.Rmd
	Rscript -e "rmarkdown::render('ReishusProjectRender.Rmd', output_file = '../report.html')"


#build docker image
.PHONY:build
build: Dockerfile
	docker build -t image .

#rule for cleaning data
data.csv: cleandata.R RawData.csv
	chmod +x cleandata.R && \
	Rscript cleandata.R

#rule for installing packages
install:
	chmod +x InstallPackages.R && \
	Rscript InstallPackages.R

#rule for help
.PHONY: help
help: 
	@echo "ReishusProjectRender.html: Generate final analysis report."
	@echo "build: Build docker image."
	@echo "install: Installed R packages needed for analysis."
	@echo "data.csv: Cleans raw dataset."
