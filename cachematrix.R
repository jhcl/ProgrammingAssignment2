## Inverse matrix and store result in a makeCacheMatrix object 

## create object to hold initial and cached matrices
## Returns  list get and set functions for both

makeCacheMatrix <- function(x = matrix()) {
## Always initialize your variables
	mat <- NULL

## getter and setter for a makeCacheMatrix object
        set <- function(y) {
                x <<- y
                mat <<- NULL
        }
	get <- function() x

## getter and setter for the cached object
	setmat <- function(blah) mat <<- blah
	getmat <- function() mat
        list(get = get, set = set, setmat = setmat, getmat = getmat)
}


## Check if cached inversed matrix is known
## If so, return cached value, else inverse matrix and send to cache function
## Returns inverted matrix

cacheSolve <- function(x, ...) {
	mat <- x$getmat()
	if(!is.null(mat)) {
		message("getting cached data")
		return(mat)
	}
	data <- x$get()
	mat <- solve(data)
	x$setmat(mat)
	mat
}
