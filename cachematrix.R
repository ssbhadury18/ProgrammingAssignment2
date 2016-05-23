## create matrix that cache the computed inverse

## Create the matrix that cache inverse

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

## compute the inverse of the matrix
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



