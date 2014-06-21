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
 
