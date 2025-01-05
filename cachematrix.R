#My functions take an inversible matrix and return it inverse matrix by first storing the matridx, then computing the matrix.
 

# This function can store the original matrix and its inverse. It also creates functions to use for the matrix object. 

makeCacheMatrix <- function(x = matrix()) {
	INV <- NULL
	set <- function(y){
	x <<- y
	INV <<- NULL
}
get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get=get, setInverse = setInverse, getInverse=getInverse)
}

# function can be used to actually compute and return the inverse of a matrix, or if the matrix was already cached using the makeCacheMatrix function, it will just return the inversed matrix.

cacheSolve <- function(x, ...) {
inv <- x$getInverse()
if(!is.null(inv)){
	message("getting cached data")
	return(inv)
}
data <- x$get
inv <- solve(data)
x$setInverse(inv)
inv
}
