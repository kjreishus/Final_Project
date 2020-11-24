## For my project, I will analyze the `RawData.csv` data included in this repository. 

Download all the files in this repository to your current directory, including `Makefile`, `DockerFile`, `RawData.csv`, `cleandata.R` `InstallPackages.R`, and `ReishusProjectRender.Rmd`. 

## Execute the analysis in local environment
To install R packages from the project folder, run
`make install`
To execute the analysis from the project folder, run 
`make report.html`
To see information about the Makefile from the project folder, run
`make help`

## Execute the analysis using Docker Image
To download the Docker image from DockerHub in Terminal, run 
`docker pull kjreishus/ex_proj`
You can also build a local docker image from the project folder but executing the following command
`make build`

To execute the analysis in a Docker container after downloading a built Docker image from DockerHub, make sure you are in a current folder and run
`docker run -v /localpath/report.html:/project/report kjreishus/ex_proj`
Note: the "localpath" is the path where you saved the project directory.
