makeCacheMatrix <- function(x = matrix()) {
  # Initialize the matrix and inverse cache
  m <- NULL
  
  # Set the matrix data
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  # Get the matrix data
  get <- function() x
  
  # Set the inverse of the matrix
  setInverse <- function(inverse) m <<- inverse
  
  # Get the cached inverse (if available)
  getInverse <- function() m
  
  # Return a list of methods
  list(set = set, get = get, setInverse
