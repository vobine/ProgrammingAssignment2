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


## cacheSolve: helper function to return the inverse of a CacheMatrix. Use the cached
## value if it is available, otherwise recompute and store it.

cacheSolve <- function(x, ...) {
  inv <- x$getSol ()
  if (is.null (inv)) {
    inv <- solve (x$get ())
    x$setSol (inv)
  }
  
  inv
}
