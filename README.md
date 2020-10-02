## For my project, I will analyze the `Georgia_COVID-19_Case_Data.csv` data included in this repository. 

To analyze the data you will need to install some `R` packages. The required packages can be installed using `R` commands.

```r
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyverse")
```

##Execute the analysis

To execute the analysis, from the project folder you need to download the data set `Georgia_COVID-19_Case_Data.csv`. Then run:
``` bash
Rscript -e "rmarkdown::render('HW3.Rmd')"
```

This will create a file called `HW3.html` output in your directory that contains the results.