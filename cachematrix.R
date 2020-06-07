## Put comments here that give an overall description of what your
## functions do

## We will make a function to make a matrix and cache the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## We will make a function to solve the cache of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  prasanna_matrix <- x$get()
  inv <- solve(prasanna_matrix, ...)
  x$setInverse(inv)
  inv
}
