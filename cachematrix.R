## Put comments here that give an overall description of what your
## 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv_x <- NULL
  set <- function(y) {
    x <<- y
    inv_x <<- NULL
  }
  get <- function() x
  inv<- function(inverse) inv_x <<-inverse
  get_inv <- function() inv_x
  list(set = set, get = get,
       inv = inv,
       get_inv = get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv_x <- x$get_inv()
  if (!is.null(inv_x)) {
    message("getting cached matrix inverse")
    return(inv_x)
  } else {
    inv_x <- solve(x$get())
    x$inv(inv_x)
    return(inv_x)
  }
}
