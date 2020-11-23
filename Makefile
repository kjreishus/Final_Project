
#rule for making report
ReishusProjectRender.html: data.csv ReishusProjectRender.Rmd
	Rscript -e "rmarkdown::render('ReishusProjectRender.Rmd', output_file_'../output/reishus_project_report.html)" 

#build docker image
.PHONY:build
build: Dockerfile
	docker build -t ex_proj .

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
