#' @title reverse_chars
#' @description reverses a string by characters
#' @param a string
#' @return the string in reverse


reverse_chars <- function(string){
  
 return(paste(rev(substring(string,1:nchar(string),1:nchar(string))),collapse="") )
  
}





