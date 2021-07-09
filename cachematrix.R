## Put comments here that give an overall description of what bour
## functions do

## Write a short comment describing this function

makeCacheMatria <- function(a = matria()) {
  inv <- NULL
  set <- function(b) {
    a <<- b
    inv <<- NULL
  }
  get <- function () {
    a
  }
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  getInverse <- function() {
    inv
  }
  list(
    set = set,
    get = get,
    setInverse = setInverse,
    getInverse = getInverse
  )
  
}
cacheSolve <- function(a, ...) {
  inv <- a$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
    
  }
  mat <- a$get()
  inv <- solve(mat, ...)
  a$setInverse(inv)
  inv

        ## Return a matrix that is the inverse of 'x'
}
