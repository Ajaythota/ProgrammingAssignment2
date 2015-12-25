##This is Week 3 programming Assignment2 
## This function calculates the inverse of matrix using R function called Solve
## The purpose of this function is to access the final value of common operations like mean, sum ..etc by just calling the function
## and accessing the ready answer instead of doing the operations everytime. 
## <<- acts like a global  or static in Java analogy


M <- matrix(c(1,2,3,4),2,2)

makeCacheMatrix <- function(x= numeric()) {
  i <- NULL
  
  set <- function(y){
    x <<- y
    i <<- NULL
    
  }
  
  get <- function() x
  
  setInv <- function(inv= numeric()) i <<- inv
  getInv <- function() i
  
  
  list(set=set,get=get,setInv=setInv,getInv=getInv)
}

cacheSolve <- function (x,...){
  i <- x$getInv()
  if (!is.null(i)){
    message ("getting from cache")
    return(i)
    
  }
  
  message ("not  getting from cache")
  matrix <- x$get()
  i <- solve(matrix)
  x$setInv(i)
  i
  
}
