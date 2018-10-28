
#' @title Range
#' @description computes the range of a numeric vector (i.e. max - min)
#' @param x a numeric vector
#' @return the range value (max - min)
stat_range <- function(x) {
  max(x) - min(x)
}



#' @title measures of center
#' @description computes the measures of center such as median and mean
#' @param x a numeric vector
#' @return the numeric vector with median and mean

stat_centers <- function(x){
  vec = c(0,0)
  
  vec[1] = median(x)
  vec[2] = mean(x)
  
  vec
  
}

#' @title measures of spread
#' @description computes the measures of spread such as range, iqr, and standard deviation
#' @param x a numeric vector
#' @return the numeric vector with range, iqr, and stdev


stat_spreads <- function(x){
  
  vec = c(0,0,0)
  
  vec[1] = stat_range(x)
  vec[2] = IQR(x)
  vec[3] = sd(x)
  vec
}
