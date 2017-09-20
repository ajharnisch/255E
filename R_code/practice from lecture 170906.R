

#setting working directory

setwd("C:\\Users\\Arthur\\255E\\Data")

calstate <- read.csv("california-state-university-2015.csv", header=TRUE, sep=",")

LimpRasp <-read.table("LimpetRaspingRate.txt", header = TRUE, sep = "\t")

# how to load xlsx files
library(xlsx)
heat = read.xlsx("Heating_trial_info.xlsx",1, sheetName = NULL)

summary("Limprasp")
str("Limprasp")
list(LimpRasp)
sjsu = calstate
objects(LimpRasp, all.names = TRUE)






boxplot(subeone$Base.Pay, subtwo$Base.Pay, subthree$Base.Pay,
        names = c('Accountant_one','Accountant_two','Accountant_three'), ylab="Base.Pay", 
        main="Box Plot of Accountant and Base Pay", las=0)


#regular expressions 

jobs = levels(calstate$Job.Title)

jobs[grep(pattern = "EQUIPMENT TECHNICIAN" , x = jobs)]

# pattern can returnthe a specifc pattern with in a column. 
#grep 
grep(pattern = "CHAN" , x = jobs) 

# note that grep can return row indecies 








grep(pattern = "SUPERVISING" , x = )