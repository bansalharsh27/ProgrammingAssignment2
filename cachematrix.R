## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        minverse <- NULL
        set <- function(y) {
                x <<- y
                minverse <<- NULL
}
get <- function() x
setInverse <- function(inverse) minverse <<- inverse
getInverse <- function() minverse
list(set = set,
     get = get,
     setInverse = setInverse,
     getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        minverse <- x$getInverse()
        if (!is.null(minverse)) {
                message("getting cached data")
                return(minverse)
  }
  mat <- x$get()
  minverse <- solve(mat, ...)
  x$setInverse(minverse)
  minverse
}
