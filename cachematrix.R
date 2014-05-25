## Programming Assignment 2:
##
## Compute inverse of a matrix only when necessary;
## if possible, return the cached result of a previous computation instead.

## makeCacheMatrix: initialize a structure to hold a matrix, a cache of its computed
## inverse, and methods to get and set their values. The methods are:
##  get()  - return the matrix
##  set(x)  - assign a new matrix value
##  getSol()  - return cached inverse (Solution)
##  setSol(s)  - assign a new vaule to serve as the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setSol <- function(solution) inv <<- solution
  getSol <- function() inv
  
  list(set = set, get = get,
       setSol = setSol,
       getSol = getSol)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
