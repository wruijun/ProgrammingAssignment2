## The function take the input of the matrix and
## inverse it if necessary

## Take the input matrix

makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL
  set <- function(y){
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  setinv <- function(solve) invm <<- solve
  getinv <- function() invm
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Calculate the inverse matrix

cacheSolve <- function(x) {
  invm <- x$getinv()
  if(!is.null(invm)){
    message("getting cached data")
    return(invm)
  }
  data <- x$get()
  invm <- solve(data)
  x$setinv(invm)
  invm
  
        ## Return a matrix that is the inverse of 'x'
}
