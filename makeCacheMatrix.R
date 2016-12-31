makeCacheMatrix <- function(x = numeric()) {
m <- NULL
set <- function(y) {
	x <<- y
	m <<- NULL
	}
get <- function() x
setmatrix <- function(matrix) m <<- matrix
getmatrix <- function() m
list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)

}