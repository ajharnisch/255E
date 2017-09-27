#used "data/the file name the working directory should be 255E. 

# use the print function when using aggregate function. 

# used job levels Job = levels(sal$Job.title)
jobsub = jobs [grep(pattern = "Payroll', x = jobs)]
#subset out the rows in the jobs sub vector.
salsub = sal[sal$job.title %in% job sub]
# this will subsset the job title that appeard in 'jobsub' 
#% sign function does any of the values fit in sal. 
salsub =droplevel(salsub) # get rid of unused factor levels

# by defalt ordered data, rearrange data use the factor funciton, factor and level function will rearrange the order. 
#

#salsub$jobtilte=factor(salsub$job.title, levels = c('Payroll technician', name the levels). )


# exporting data, be able to output a report and summary table. Markdown files. file is a .Rmd (text).R this can generate 
#html, word document, PDF, Latex. .RMD file can include your code. 

#make and .RMD file
under file new file rmarkdown, -> eneter title that will appear in the final output document. it will then give you the 
# PDF render can render LATEX document, there is a miktex package to add this file for latex. 


#first six lines special YAML goes at top of file needs three dashes, the text inside uses special format, 
#title
#uuthor
#date
#output: word_document

#three backticks then have rcode on multiple lines. {r setup, includes = false} knitr:: opts_chunk$set (echo = true) note the chunk tells 
#tells it is R code

##R markdown - means this is a header line

```{# r cars summar gives summary of cars. note the lcoation it is printed in under the counsole. 


# apparently there is a knit to word, this will print to docs. 

#figure captions library (knitr)- include here so 

# a comment in the markdown file <!-- here is a markdown style (html-style) comment -->
# think of this as r chunk 
# r will assume that the working directory is the file with the markdown .RMD file is. 
#../data

##``{r import data
#name of the worksheets}



#echo = false tells the processor to not show 

# be sure to print out my means. 
#to reformat the table, kable (mymeans, caption = 'mens length for each sex,')
#note the boxplot funciton not written out , if echo was true, homework for this this will be the infomraiton that you have alread been asked to make. 
#then output it as a nice table using the kable function. 

#Rmd  fiel sending or showing he code to knitr.  the output gets put into a .md (markdwon file). this is being procesed by Pac doc whihc can out put the know out put formats
# the echo function - 
#knitr::opts_chunk$set() applys to every r chunk in teh document. (:: go get this fucntion chunk)

# by defalt does not alter the r code. the global function gives you a place to hide or generate the document. 


#installing package for PDF, the is Beamer, .pptx (beamer can be used for powerpoint. )


#note there is readings for next week 


#for your data sets your ultimate finished file will be in an .RMD and a data folder etc. 

#for next week we will look at version control. introduction to ggit hub to keep track of files. 