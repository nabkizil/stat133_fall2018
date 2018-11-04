
#' @title is_color
#' @description check if input is a color
#' @param col
#' @return see if it is a color
isColor <- function(x)
{
  res <- try(col2rgb(x),silent=TRUE)
  return(!"try-error"%in%class(res))
}

#' @title is_hex
#' @description check if string is valid color in hexadecimal notaion
#' @param x numeric vector
#' @return T or F
is_hex <- function(x){
  if (!is.character(x)){
    stop("invalid input; a string was expected")
  }
  else if (isColor(x) & !(x %in% colors())){
    TRUE
  }
  else {
    FALSE
  }
}

