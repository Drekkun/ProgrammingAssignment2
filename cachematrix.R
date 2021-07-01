## Put comments here that give an overall description of what your
## functions do

## The function x is equal to the Matrix and n is set to be "NULL"

makeCacheMatrix <- function(x = matrix()) {
	n <- NULL
	set <- function(y) {
	x <<- y
	n <<- NULL
}
	get <- function() x
	setinverse <- function(inverse) n <<- inverse
	getinverse <- function() n
	list(set = set, get = get,
	     setinverse = setinverse,
	     getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	n <- x$getinverse()
	if(!is.null(n)){
	message("Getting Data")
	return(n)
}
	data <- x$get()
	n <- mean(data, ...)
	x$setinverse(n)
	n
}
