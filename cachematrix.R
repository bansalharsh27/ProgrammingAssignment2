## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        minverse <- NULL                                ## initailize minverse to NULL which holds Inverse of a Matrix passed
        set <- function(y) {                            ## define the set function to assign new
                x <<- y                                 ## value of matrix in parent environment
                minverse <<- NULL                       ## if already new matrix is present, Reset to NULL
}
get <- function() x                                     ## define the get fucntion that returns the value of the matrix arguement
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
        if (!is.null(minverse)) {                               # Check inverse matrix is NULL or not
                message("getting cached data")
                return(minverse)                                # Gets invertible Matrix
  }
  mat <- x$get()                                                # gets original Data Matrix
  minverse <- solve(mat, ...)                                   # Solving the Matrix to get inverse
  x$setInverse(minverse)
  minverse                                                      # returns invertible matrix
}
