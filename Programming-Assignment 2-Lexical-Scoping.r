## Put comments here that give an overall description of what your
## functions do
setwd('C:\Users\bsix2\Desktop\R-Programming')

## Write a short comment describing this function
## x is to be set as matrix, set s as null, and set mean to solve.
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Write a short comment describing this function
## Changed mean to solve and m to s
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
## Cedrick Domangcas
