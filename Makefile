#rule for making report
report.html: data.csv R/ReishusProjectRender.Rmd
	Rscript -e "rmarkdown::render('R/ReishusProjectRender.Rmd', output_file = '../output/report.html')"


#build docker image
.PHONY:build
build: Dockerfile
	docker build -t kjreishus/ex_proj .

#rule for cleaning data
data.csv: R/cleandata.R RawData.csv
	chmod +x R/cleandata.R && \
	Rscript R/cleandata.R

#rule for installing packages
install:
	chmod +x R/InstallPackages.R && \
	Rscript R/InstallPackages.R

#rule for help
.PHONY: help
help: 
	@echo "ReishusProjectRender.html: Generate final analysis report."
	@echo "build: Build docker image."
	@echo "install: Installed R packages needed for analysis."
	@echo "data.csv: Cleans raw dataset."
