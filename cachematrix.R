## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invrs= NULL
set= function (y){
x<<-y
invrs<<-NULL
}
get= function () x
setinvrs= function (inverse) invrs<<-inverse
getinvrs= function() invrs
list (set=set,get=get,setinvrs=setinvrs,getinvrs=getinvrs)
}
CacheSolve<- function(x,...){
invrs=x$getinvrs()
if(!is.null(invrs)){
  return(invrs)
}
mat.data=x$get()
invrs=solve(mat.data,...)
x$setinvrs(invrs)
return(invrs)
}



