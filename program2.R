# set up the address
setwd("E:/Course/Johns hopkins_Data Science/R Programming/Program2/")
source("time_consuming.R")

# create the matrix 
data<-matrix(1:2500,50,50)
#list the top three rows from raw data
head(data,3);

#run funciton
f<-makeVector(data)

#summary
summary(f);

#list  the top three rows from makeVector function
head(f$get(),3);

#run funciton
cachemean(f)

#see if data can be returned to makeVector
f$getmean();
