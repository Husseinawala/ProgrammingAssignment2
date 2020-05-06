## Put comments here that give an overall description of what your
## functions do
## First Function creates a special Matrix that can include a cached inverse
## Second Function searches to see if the inverse matrix exists if not it calculates the
##inverse and then cache it. 


## Write a short comment describing this function
## Creating the special matrix variable that conatins the Matrix and its Cached 
## inverse if it exists.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## This function searches the variables created above to see if an inverse is saved and then 
## Calculates the inverse and saves it if it doesn't
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
## Return a matrix that is the inverse of 'x'
}

