makeCacheMatrix <- function(a, b, c, d) {
newMatrix = matrix( 
    c(a, b, c, d), 
    nrow=2, 
    ncol=2)
newMatrix
}
testMatrix <- makeCacheMatrix(1,2,3,4)
testMatrix
testMatrix2 <- solve(testMatrix)
testMatrix2