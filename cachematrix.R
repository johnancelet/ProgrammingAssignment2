## Functions for creating and caching the inverse of a Matrix


## makeCacheMatrix takes a matrix, and compiles a special list of functions needed to run
## cacheSolve.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## cacheSolve checks to see if the inverse of the matrix has already been cached.  If so,
## cacheSolve returns that cached value.  If not, cacheSolve, compute the inverse, cache it, and return it.
        
cacheSolve <- function(x) {
                
        m <- x$getInverse()
        if(!is.null(m)) {
                message("retrieving cached data")
                return(m)
        }
        matr <- x$get()
        m <- solve(matr)
        x$setInverse(m)
        m
}
 




