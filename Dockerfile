FROM rocker/tidyverse

# install R packages

RUN Rscript -e "install.packages('dplyr', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('ggplot2', repos ='http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('tidyverse', repos = 'http://cran.us.r-project.org')"

# make a directory for the project in the docker container

RUN mkdir /project
RUN mkdir /project/report

# copy contents of local folder to project directory in container
COPY ./ /project/

#make R scripts executable
RUN chmod +x /project/*.R

# make container entry point bash
CMD make -C project
