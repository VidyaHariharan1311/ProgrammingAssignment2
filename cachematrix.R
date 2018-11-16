## Put comments here that give an overall description of what your
## functions do
## The functions below are a pair - i.e. there are 2 functons. 
## These 2 functions used to create a matrix object that 
## stores the matrix and caches its inverse.
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix ##sets the inverse 
  getInverse <- function() inv  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by the makeCacheMatrix function above


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()  ## this will return inv
        if(!is.null(inv)){    ##checks if inv is null - i.e. no inverse has been returned, in which case it takes the cached version
    message("displaying data from casche")
    return(inv)
  }
  data <- x$get()  ## the matrix x is stored in data
  inv <- solve(data,...) ## creates an inverse of the matrix  using the solve function; inverse is assigned to inv
  x$setInverse(inv)  ## Sets the inverse of the matrix, by passing the global value of inv to the local versionof inv 
  inv      
}
