knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(testthat)






'
@title minkowski Distance
@description finds the minkowski distance of order p
@param x, y, p
@return return the distance
'


minkowski <- function(x,y, p = 1){
  
  if(length(x) != length(y)){
    stop("x and y are not the same length")
  }
  
  if(p < 1){
    stop('p cannot be less than 1')
  }
  
  if(typeof(p) == "character"){
    
    if(p != 'max'){
      stop('invalid character value for p')
    }
    
    if(p == 'max'){
      
      max(abs(x-y))
    }
    
  }
  
  
    else{
      
      a <- abs(x-y)**p
      return(sum(a)**(1/p))
      
      
    }
  
  
}



