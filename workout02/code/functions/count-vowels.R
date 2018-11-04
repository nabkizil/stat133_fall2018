#' @title count_vowels
#' @description counts the vowels in a string
#' @param a string
#' @return number of vowels


count_vowels <- function(a){
  if(!is.character(a)){
    stop("invalid input; a string was expected")
  }
  
  vowels <- c('a', 'e', 'i', 'o', 'u')
  x <- tolower(strsplit(a, "")[[1]])
  aa <- as.double(sum(str_count(x,'[a]')))
  ee <- as.double(sum(str_count(x,'[e]')))
  ii <- as.double(sum(str_count(x,'[i]')))
  oo <- as.double(sum(str_count(x,'[o]')))
  uu <- as.double(sum(str_count(x,'[uu]')))
  
  c_vow <- c(aa,ee,ii,oo,uu)
  names(c_vow) <- vowels
  c_vow
}
