##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
makeCacheMatrix <- function(x = numeric()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i  <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse 
  getinverse <- function() i
  list(set = set, get = get,
       setinverse  = setinverse ,
       getinverse  = getinverse )
}

## returns the inverse of the matrix
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data.")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}
