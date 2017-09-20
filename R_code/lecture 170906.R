library(readxl)
#remember to set the working directory using setwd('file loc') once you get the working firectory choose the gear to set the working directory
df3 = read_excel(path = "Reinhart-Rogoff.xlsx", na='n.a.')

mean(df3$`90 or above`, na.rm = TRUE)

mean(df3$`90 or above`[1:15], na.rm = TRUE)

#importing data and doing file checks

df = read.csv('Messy_means2 (1).csv')

#dotchart to check our data
dotchart(df$Value)
# not the cluster of data points. you may assume the data could be correct, this data is suspect. how to determine how the data i
#determine minimum

min(df$Value)
#note -192 for minimum
#tial and type for the minimum need a function that will give a row index. we can ask what the row is 
which.min(df$Value)
# the line which has the minimum valeue, row 48nis the concern, 
#generally we do not eliminate values, you can write a code to eliminate the value 

df[48,'Value']=NA
# note on the sheet this value becomes NA in row 48
which.max(df$Value)

#output is a row number

df[which.max(df$Value),'Value']=NA
# above may be safer to use
df[22,'Value'] = NA

df[which.min(df$Value), 'Value'] = NA

dotchart(df$Value)
#note after performing this function how different the data is
# dot chart shows one very small value one very large value that are suspect. let's remove those two, turned to NA

# set the minimum value in the data
#these are the steps to determine what is problamatic about the value. 

df[which.min(df$Value, na.rm=TRUE), 'Value'] = NA
#na.rm means ignore NA

#how to extract means, df[df$Type == 'Mean'] type 
df$Type == 'Mean'

#when you use square brackets need to specify rows and columns, 
df$Value[df$Type=="Mean"]
df[df$Type=="Mean","Value"]
df[df$Type=="Mean",3]

#the last code works because it is three in the frame note the difference in the code yeilds the same result. 


mymeans =df[df$Type=="Mean","Value"]
mean(mymeans)
#if you wanted to find the mean of means

#also if you want to change a data that was chnaged to NA you would have to reimport it, remember that edits to files are only copies of what is in R. 





df = read_excel("Heating_trial_info.xlsx")
str(df)
#str - data structure, also note the special character for time. 




#convert characters to factors

df[,3:8] = lapply(df[,3:8], factor)
#leaving blank does it do an entire row, lapply - takes factor functions wraps it around values 3:8 then re4writes the results to the column 3:8
# and applys the factor function 
#factor can determine the type of 


levels(df$TCchannel)
levels(df$MusselTagID)
#summary give a count of each of the different fatcor types
summary(df$TrialNumber)
#note changes in the summary can indicate data has been added to. 

levels(df$`Gaping?`)

#levels are a good way to determine if there are changes in the data. 
# note upper case yes and lower case yes are not inteerpurated in the same way. 


summary(df$TrialNumber)
#this is an output for what the range of data matches what we would expect it to have. # NA will show upo seperately.

#table function 
table(df$AliveDead)
# 

table(df$TCLocation)


#use x-tabs, think of these from cross tabs. show accounts of people in diff combination of categories. 

xtabs(~AliveDead + MusselTagID, data = df)

#use warnings use function warnings
warnings()
# it is possible to fix this by reimporting the data

#syntax, xtab (~ AliveDead + MusselTagID,{foirmula function ybefore~ x} two column names ie alive dead this shows the row columns, 
#note that this is not df$AliveDead  factor columns spectify the columns. )



xtabs(~AliveDead + MusselTagID + TCLocation, data = df)

# one line command for the output of data. when you are writing the analysis report this may be important. various functions to show what is in column or row


# joining data files, having multiple data in a data file, organize multiple. 


svl1 = read.csv("SVLCallisaurus.csv")
str(svl1)
svl2 = read.csv("SVLCallisaurus2.csv")
str(svl2)

# these are two data sets which we want to merge

svlAll = rbind(svl1,svl2)
# rbind funbction this stick sheet together note how the objects are added. all have the same column name. the rbind function will work when you have the same columns and names. 
# if you are doing this by hand you must be sure to put all of this togeter. 

#if you want to rename a column

colnames(svl1) = c('Aminmal.ID','Sex','SVL.mm')


svlall = rbind(svl1,svl2)
# note there is an error

# save the joined files as a new csv 

write.csv(x=svlAll, file='SVljoined.csv', row.names = FALSE)
#this function allows for the new file to be added to the file folder being used by the working directory. 
#if you want to change the folder just change the working directory you can find that file from the working directory.

boxplot(Svl.mm~Sex, data = svlAll, xlab = 'Sex', ylab = 'Snout~vent length.mm')
#y~x y as a function of x double check this

#read about the order of a function if you want to be explicive thne you need to specifiy this, because assumes the first argument is the x value then the y value) double check if this is correct
# note the entries in the help file. 



#hw 
df = read.csv ("california-state-university-2015.csv")

#how to approch this problem, if this was excel you can use sort. 
#to do this in R 
# how to find the categorygories in the function levels

levels(df$Job.Title)
# this does not give all the individual listing but will give quick list of what the diff levels of it are. 

#how do I get the data for each, last week searched for the job title tha
# if you do a subset for each of the data sets then you can use rbind function to get them into one data frame. 
#note that the rbind function dsub= rbind(SVl1,SVL2,SVL3). 

#using boxplot, you want to break them up into individual job titles. ~ function comparing multiple research formulas. 


#after running the rbind function, there is another function called df= droplevels(dfsub) knocks out other factor levels. 


#ordering, chnaging the order of a factor, levels function prints out what order R is thinking in. 

svl1$sex = factor(svl1$Sex, levels = c('M','F'))
# note in the svl the order has been changed 

svl1$sex = factor(svl1$Sex, levels = c('M','F'))
# for example if there was a missing character make sure that the level spacing. good point to use levels to verify. 

#generate abreviated names for each category. boxplot has a p[lace where to place new names, but you must match the factor levels. 

#names = c(male, female) there shou,d be, calculate the mean base. use mean function 

#aggregate function - one line function to calculate the mean of each group

aggregate(svl1$SVL.mm~Sex, data = svl1, FUN= mean)


#category equiptment technicens, specifically electricians. assume correct directory. 


#regular expressions 

jobs = levels(df$Job.Title)

jobs[grep(pattern = "CHAN" , x = jobs)]

# pattern can returnthe a specifc pattern with in a column. 
#grep 
grep(pattern = "CHAN" , x = jobs) 

# note that grep can return row indecies 
