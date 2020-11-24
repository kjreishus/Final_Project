FROM rocker/tidyverse

# install R packages

RUN Rscript -e "install.packages('dplyr')"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('tidyverse')"

# make a directory for the project in the docker container

RUN mkdir /project

# copy contents of local folder to project directory in container
COPY ./ /project/

#make R scripts executable
RUN chmod +x /project/R/*.R

# make container entry point bash
CMD make -C project report.html
