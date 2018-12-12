device <- function(sides = c(1, 2), prob = c(1/2, 1/2)){
  
  check_sides(sides)
  check_prob(prob)
  
  object <- list(
    sides = sides,
    prob = prob
  )
  class(object) <- "device"
  object
}

isUnique <- function(vector){
  return(!any(duplicated(vector)))
}


check_sides <- function(sides) {
  if(length(sides) <= 1) {
    stop("\n'sides' must be a vector of length > 1")
  }
  if(isUnique(sides) == FALSE) {
    stop("\n'sides' must contain only unique values")
  }
  TRUE
}

check_prob <- function(prob) {
  if (length(prob) <= 1 | !is.numeric(prob)) {
    stop("\n'prob' must be a numeric vector of length 6")
  }
  if (any(is.na(prob))) {
    stop("\n'prob' cannot contain missing values")
  }
  if (any(prob < 0) | any(prob > 1)) {
    stop("\n'prob' values must be between 0 and 1")
  }
  if(sum(prob) != 1) {
    stop("\nelements in 'prob' must add up to 1")
  }
  TRUE
}

#' @export
print.die <- function(x, ...) {
  cat('object "device"\n\n')
  side <- vector(length = length(x$sides))
  prob <- vector(length = length(x$sides))
  for(i in 1:length(x$sides)) {
    side[i] <- x$sides[i]
    prob[i] <- x$prob[i]
  }
  t <- cbind.data.frame(side,prob)
  print(t)
  invisible(x)
}

#' @rdname device
#' @param x an R object
#' @export
is.device <- function(x) {
  is(x, "device")
}
  
  


#constructor function for roll
roll <- function(device, times = 1){
  
 # if(device != class(device)){
  #  stop("\n'device' must be of class device")
  #}
  
  check_times(times)
  
  
  output <- list()
  rolls <- vector()
  sides <- device$sides
  prob <- device$prob
  total <- times
  
  rolls <- sample(device$sides, size = times, replace = TRUE, 
                  prob = device$prob)
  
  object <- list(
    rolls = rolls,
    sides = sides,
    prob = prob,
    total = total
  )
  class(object) <- "rolls"
  object
  
  
}

check_times <- function(times){
 
   if ((times%%1 != 0) | (times < 1)) {
    stop("\n'times' must be an integer > 1")
  }
  
   TRUE
}


print.rolls <- function(x, ...) {
  z <- cat('object "rolls"\n')
  t <- x$rolls
  print(z)
  print(t)
  invisible(x)
}


summary.rolls <- function(x,...){
  df <- data.frame(table(x$rolls))
  colnames(df) <- c("side", "count")
    df$prop = (df$count / x$total)
  
    df
  
  
}

plot.rolls <- function(x, ...){
  
  side = summary.rolls(x)$side
  freq = summary.rolls(x)$prop
  
barplot(freq, names.arg = side, xlab = "sides of device", ylab = "relative frequencies", main = "Relative frequencies in a series of rolls") 
  
}

"[.rolls" <- function(x,n){
  
  x$rolls[n]
  
  
}

"[<-.rolls" <- function(x, i, value) {
  if (!(value %in% x$sides)) {
    stop(sprintf('\nreplacing value must be a side'))}
  if (i > x$total) {
    stop("\nindex out of bounds")
  }
  x$rolls[i] <- value
  x
}


"+.rolls" <- function(obj, incr) {
  if (length(incr) != 1 | incr <= 0) {
    stop("\ninvalid increment")
  }
 
   more_rolls <- roll(device(sides = obj$sides, prob = obj$prob), times = incr)
  append(obj$rolls, more_rolls$rolls)
  
   
   
   }







