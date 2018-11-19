##Finding the inverse of an invertible square matrix using 
##the two functions makeCacheMatrix and cacheSolve
makeCacheMatrix<-function(x=matrix()){
inve<<-NULL
set<-function(y){
x<<-y
inve<<-NULL
}
get<-function()x
setinverse<-function(inverse)inve<<-inverse
getinverse<-function()inve
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}
## cacheSolve function calculates the inverse of the original matrix
cacheSolve<-function(x,...){
##Return a matrix that is the inverse of 'x'
inve<-x$getinverse()
if(!is.null(inve)){
message(("getting cached data"))
return(inve)
}
data<-x$get()
inve<-solve(data,...)
x$setinverse(inve)
inve
}
