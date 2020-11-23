## For my project, I will analyze the `RawData.csv` data included in this repository. 

Download all the files in this repository to your current directory, including `Makefile`, `DockerFile`, `RawData.csv`, `cleandata.R` `InstallPackages.R`, and `ReishusProjectRender.Rmd`. 

Exexcute the commands by entering `make` in the command line. This will generate `ReishusProjectRender.html` to show the results of the analysis.

To execute the analysis in docker, first pull the docker image by executing this command `docker pull kjreishus/ex_proj .` or you can build the docker image locally by excuting the command `make build`. 
To mount your local directory for the final report, execute this command: `docker run -v /localpath/report:/reishus_project/report kjreishus/ex-proj`. Make sure you change `localpath` to local project directory.
