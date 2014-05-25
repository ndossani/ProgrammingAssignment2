## The primary objective of these functions is to compute the inverse of a square matrix. The inverse of a matrix is a matrix that, when multiplied by the originl matrix, results in an "identity" matrix i.e a matrix with all zeros except the diagonal elements which are 1's. Often the inverse of a matrix does not exist but for the purpose of this Project we will assume that the matrix, provided as a data object, is invertible. A secondary objective of the project is efficiency. As matrix inversions can take substantial computing time, we include a function that can "cache" the inverse so that it can be recalled if needed again.

##  makeCacheMatrix:  This function creates a special "matrix" object that can cache its inverse.



makeCacheMatrix <- function(x = matrix()) {
    
    
    cacheInverse <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m
    }


}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        makeInverse <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                x <<- y
                m <<- NULL
            }
            get <- function() x
            setInverse <- function(Inverse) m <<- Inverse
            getInverse <- function() m
            list(set = set, get = get,
            setInverse = setInverse,
            getInverse = getInverse)
        
}
