## For my project, I will analyze the `RawData.csv` data included in this repository. 

Download all the files in this repository to your current directory, including `Makefile`, `DockerFile`, `RawData.csv`, `cleandata.R` `InstallPackages.R`, and `ReishusProjectRender.Rmd`. 

## Execute the analysis in local environment
To install R packages from the project folder, run
```
make install
```
To execute the analysis from the project folder, run 
```
make report.html
```
To see information about the Makefile from the project folder, run
```
make help
```

## Execute the analysis using Docker Image
To download the Docker image from DockerHub in Terminal, run 
```
docker pull kjreishus/ex_proj
```

To generate the final report, run the following command to mount your local directory to the directory in the Docker container
```
docker run -v /localpath:/project/output kjreishus/ex_proj
```
Note: the "localpath" is the path where you saved the project directory.
