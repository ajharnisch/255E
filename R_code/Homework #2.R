
#goal: 1. load .csv. 2. subset class of job title to new data frame. 3. show the distribution of salaries for the 
#different class of assigned job class, 4. order the categories on the plot from lowest to highest paid, 
#5. generate abbreviated names for each category along the x-axis, 6. add a color to each of the boxes, 
#7. put appropriate titles on the x and y-axis, #8 calculate and print out (print to console) the 
#mean salary for each group

setwd("C:\\Users\\Arthur\\255E")

# load the .CSV file (1.)

calstateUniversity <- read.csv("data\\california-state-university-2015.csv", header=TRUE, sep=",")


# for the purposes of making sure that I have the correct name of the class of job title 
#(equiptment technician, electronic)

Jobs = levels(calstateUniversity$Job.Title)
Jobs[grep(pattern = "EQUIPMENT TECHNICIAN" , x = Jobs)]
Jobs[grep(pattern = "ELECTRONIC" , x = Jobs)]

# subset out a class of job and title (equiptment technician, electrician) note three levels (2.)

sjsu=calstateUniversity
subone = subset(sjsu,calstateUniversity$Job.Title=="EQUIPMENT TECHNICIAN I, ELECTRONIC")   
subtwo = subset(sjsu,calstateUniversity$Job.Title=="EQUIPMENT TECHNICIAN II, ELECTRONIC") 
subthree = subset(sjsu,calstateUniversity$Job.Title=="EQUIPMENT TECHNICIAN III, ELECTRONIC")

#for the purpose of verifying the order of categories will be from lowest to highest (4.)

max(subone$Base.Pay)
max(subtwo$Base.Pay)
max(subthree$Base.Pay)

# based on the max base pay the order from lowest to highest should be EQUIPMENT TECHNICIAN I, ELECTRONIC,
#EQUIPMENT TECHNICIAN II, ELECTRONIC, then EQUIPMENT TECHNICIAN III, ELECTRONIC.

#Use the subset data to form a boxplot (3.,5.,6.,7.) 

boxplot(subone$Base.Pay, subtwo$Base.Pay, subthree$Base.Pay,names = c('Equip. Tech. I, Electronic',
        'Equip. Tech. II, Electronic', 'Equip. Tech. III, Electronic'), ylab="Base.Pay",
        main="Box Plots of Equiptment Technician (I,II,III), Electronic and Base Pay (salary)", 
        las=0, col = c("green2","green3","green4"))


# calculate a mean for salary of each group (8.)

subs=rbind(subone,subtwo,subthree)
aggregate(Base.Pay~Job.Title, data = subs, FUN= mean)
