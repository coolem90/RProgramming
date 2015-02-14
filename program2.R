# set up the address
setwd("E:/Course/Johns hopkins_Data Science/R Programming/Program2/")
source("time_consuming.R")

# create the matrix 
data<- rbind(c(1, 2), c(2, 1))
#list raw data
data;

#run funciton
f<-makeCacheMatrix(data)

#list  the top three rows from makeCacheMatrix function
f$get();

#run funciton
cacheSolve(f)

#see if data can be returned to makeCacheMatrix
f$getinverse();


solve(data) ;