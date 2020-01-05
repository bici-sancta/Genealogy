

# ... driver file to execute gedcom reader scripts


rm(list=ls())

library(dplyr)
library(tictoc)
library(ggplot2)

printf <- function(...) invisible(cat(sprintf(...)))

home_dir <- ("/home/mcdevitt/_ds/_src/ged/genealogy/")
data_dir <- ("./data/")
plot_dir <- ("./plots/")
src_dir <- ("./src")

setwd(home_dir)
setwd(src_dir)

source("./read.gedcom.R")

setwd(home_dir)
setwd(data_dir)

# ...   -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# ...   read in some data sets
# ...   -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

ged_file = "gag_2010.09.01.ged"

df_ged = read_gedcom_ind(ged_file)

