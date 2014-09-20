
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
This function creates a a matrix object that can cache its inverse.
cacheSolve computes the inverse of the matrix created by makeCachematrix function.
makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
} ## below is the makeCachematrix function created for this assignment.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y)
  {
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setinverse<-function(solve) 
    m<<-solve
  getinverse<-function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}

cacheSolve <- function(x=matrix(), ...) {
  ## Returns matrix inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setinverse(m)
  m
}
NCols=3 
NRows=3 
trialMat<-matrix(runif(NRows*NCols), nrow=NRows)
trialMat
## Solve in R using
x<-makeCacheMatrix(trialMat)
cacheSolve(x)

