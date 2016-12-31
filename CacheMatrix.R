## Put comments here that give an overall description of what your
## functions do

## Execution Instructions
## MyMatrix <- makeCacheMatrix(1:4)
## Creates a matrix 2 x 2
## MyMatrix$get()
## Returns;
##     [,1] [,2]
## [1,]    1    3
## [2,]    2    4
## CacheSolve will get the inverse via solve function;
## > CacheSolve(MyMatrix)
##     [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
## Executing a 2nd time will get the cached inverse result;
## getting cached data
##     [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
## Write a short comment describing this function
## Construct a 2 x 2 matrix from numeric parameters

makeCacheMatrix <- function(x = numeric()) {
m <- NULL
z <- matrix(x, nrow=2, ncol=2)
set <- function(y) {
				z <- matrix(y, nrow=2, ncol=2)
                x <<- z
                m <<- NULL
        }
get <- function() z
setinverse <- function(solve) m <<- solve
getinverse <- function() m
list(set = set, get = get,
			 setinverse = setinverse,
			 getinverse = getinverse)
}

## Write a short comment describing this function
## Calculate the inverse of the matrix via solve function or get from cache if already solved

CacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
		m <- solve(data)
        x$setinverse(m)
        m
}