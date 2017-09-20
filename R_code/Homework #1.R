#make sure the working directory is set correctly
getwd()
#if the working direcotry is not set correctly use
setwd("C:\\Users\\Arthur\\255E\\data")

# load the .CSV file 
calstateUniversity <- read.csv("california-state-university-2015.csv", header=TRUE, sep=",", as.is=TRUE)

# sub set the data 

sjsu=calstateUniversity
subone=subset(sjsu,calstateUniversity$Job.Title=="ACCOUNTANT I")
subtwo=subset(sjsu,calstateUniversity$Job.Title=="ACCOUNTANT II")
subthree=subset(sjsu,calstateUniversity$Job.Title=="ACCOUNTANT III")


#Use the subset data to form a boxplot

boxplot(subone$Base.Pay, subtwo$Base.Pay, subthree$Base.Pay,
        names = c('Accountant_one','Accountant_two','Accountant_three'), ylab="Base.Pay", 
        main="Box Plot of Accountant and Base Pay", las=0)









