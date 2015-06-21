## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

> ## A pair of functions that cache the inverse of a matrix
> ## Creates a special matrix object that can cache its inverse
> makeCacheMatrix <- function( m = matrix() ) {
+ i <- NULL
+ 
+ ##set the matrix
+ set <- function( matrix ) {
+ m <<- matrix
+ i <<- NULL
+ }
+  ##get the matrix
+ get <- function() {m}
+ 
+ ##set the inverse of the matrix
+ setinverse <- function(inverse) {
+ i <<- inverse
+ }
+ 
+ ##get the inverse of the matrix
+ getinverse <- function() {
+ i
+ }
+ 
+ ##Store above 4 functions into makeCacheMatrix
+ list(set = set, get = get,
+ setinverse = setinverse,
+ getinverse = getinverse)
+ }
> 
> ##compute the inverse of the special matrix returned by makeCacheMatrix or if the inverse has already been calculated and the matrix has not changed, then retrieve the inverse from the cache
> 
> cacheSolve <- function(x, ...) {
+ 
+ ##return a matrix that is the inverse of x
+ m <- x$getinverse()
+ 
+ ##retrieve the inverse if it has already been calculated
+ if( !is.null(m)) {
+ message("getting cached data")
+ return(m)
+ }
+ 
+ ##get the matrix from object
+ data <- x$get()
+ 
+ #compute the inverse of the matrix
+ m <- solve(data) %*% data
+ 
+ ## compute the inverse of the matrix
+ m <- solve(data) %*% data
+ 
+ ##set the inverse to the object
+ x$setinverse(m)
+ 
+ ##return the matrix
+ m
+ }
