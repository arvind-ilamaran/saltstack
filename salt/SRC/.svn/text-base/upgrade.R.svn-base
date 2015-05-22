install.packages("ctv",repos="http://cran.ism.ac.jp/")

library(ctv)

install.views(c("SocialSciences","Econometrics",
                "TimeSeries","HighPerformanceComputing",
		"Finance"),repos="http://cran.ism.ac.jp/")

ipak <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}
 
# usage
packages <- c("ggplot2", "plyr", "reshape2", "DBI","RSQLite","doMC","foreach","xts","zoo")
ipak(packages)

