Lab 8: Simple Loops
================
Gaston Sanchez

For Loops
=========

``` r
vec <- c(3, 1, 4) 
vec + 1
```

    ## [1] 4 2 5

``` r
vec[1] + 1
vec[2] + 1
vec[3] + 1
```

``` r
vec <- c(3, 1, 4) # Change this value!

for (j in c(3,1,4)) { # Replace c() with an appropriate sequence.
  # Fill in.
  
  3*j
  print(3*j)
  
  
}
```

    ## [1] 9
    ## [1] 3
    ## [1] 12

What if you want to create a vector `vec2`, in which you store the values produced at each iteration of the loop? Here's one possibility:

``` r
vec <- c(3, 1, 4)  # Change this value!
vec2 <- rep(0, length(vec))  # "empty" of zeros vector to be filled in the loop
for (i in vec) {# Replace c() with an appropriate sequence.
  # Fill in.
  
  vec2[i] = i*3
  
  
}

vec2
```

    ## [1]  3  0  9 12

Summation Series
----------------

``` r
n<- 20

vec <- rep(1, n)


for (i in vec[-1] ){
  
  vec[i] = vec[i]/(2**i)
  print(vec[i])
  
  
}
```

    ## [1] 0.5
    ## [1] 0.25
    ## [1] 0.125
    ## [1] 0.0625
    ## [1] 0.03125
    ## [1] 0.015625
    ## [1] 0.0078125
    ## [1] 0.00390625
    ## [1] 0.001953125
    ## [1] 0.0009765625
    ## [1] 0.0004882812
    ## [1] 0.0002441406
    ## [1] 0.0001220703
    ## [1] 6.103516e-05
    ## [1] 3.051758e-05
    ## [1] 1.525879e-05
    ## [1] 7.629395e-06
    ## [1] 3.814697e-06
    ## [1] 1.907349e-06

``` r
#Yes the series converges to zero



for (i in vec[-1]){
  
  vec[i] = vec[i]/(9**i)
  print(vec[i])
  
  
}
```

    ## [1] 2.119276e-07
    ## [1] 2.354751e-08
    ## [1] 2.61639e-09
    ## [1] 2.9071e-10
    ## [1] 3.230112e-11
    ## [1] 3.589013e-12
    ## [1] 3.987792e-13
    ## [1] 4.43088e-14
    ## [1] 4.9232e-15
    ## [1] 5.470222e-16
    ## [1] 6.078025e-17
    ## [1] 6.753361e-18
    ## [1] 7.503735e-19
    ## [1] 8.337483e-20
    ## [1] 9.26387e-21
    ## [1] 1.029319e-21
    ## [1] 1.143688e-22
    ## [1] 1.270764e-23
    ## [1] 1.41196e-24

``` r
#Yes this series converges to zero as well
```

arithmetic sequences
====================

``` r
n<- 20

vec <- c(1:n)
vec
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

``` r
for (i in vec ){
  
  vec[i] =  3 + (i - 1) * 3
  print(vec[i])
  
  #no this series diverges
  
  
}
```

    ## [1] 3
    ## [1] 6
    ## [1] 9
    ## [1] 12
    ## [1] 15
    ## [1] 18
    ## [1] 21
    ## [1] 24
    ## [1] 27
    ## [1] 30
    ## [1] 33
    ## [1] 36
    ## [1] 39
    ## [1] 42
    ## [1] 45
    ## [1] 48
    ## [1] 51
    ## [1] 54
    ## [1] 57
    ## [1] 60

``` r
n<- 20

vec <- c(1:n)
vec
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

``` r
for (i in vec ){
  
  vec[i] =  3 * 2**(i-1)
  print(vec[i])
  
  
  #no this series diverges
  
}
```

    ## [1] 3
    ## [1] 6
    ## [1] 12
    ## [1] 24
    ## [1] 48
    ## [1] 96
    ## [1] 192
    ## [1] 384
    ## [1] 768
    ## [1] 1536
    ## [1] 3072
    ## [1] 6144
    ## [1] 12288
    ## [1] 24576
    ## [1] 49152
    ## [1] 98304
    ## [1] 196608
    ## [1] 393216
    ## [1] 786432
    ## [1] 1572864

------------------------------------------------------------------------

Sin Approximation
=================

``` r
n<- 20

vec <- c(1:n)
vec
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

``` r
for (i in vec ){
  
  vec[i] =  i - (i**3)/factorial(3) + (i**5)/factorial(5) + (i**7)/factorial(7)
  print(vec[i])
  
  #no this series diverges
  
  
}
```

    ## [1] 0.8418651
    ## [1] 0.9587302
    ## [1] 0.9589286
    ## [1] 5.11746
    ## [1] 25.70933
    ## [1] 90.34286
    ## [1] 253.2931
    ## [1] 611.8349
    ## [1] 1328.577
    ## [1] 2660.794
    ## [1] 4997.761
    ## [1] 8907.086
    ## [1] 15191.04
    ## [1] 24953.91
    ## [1] 39681.29
    ## [1] 61332.47
    ## [1] 92446.71
    ## [1] 136264.6
    ## [1] 196865.5
    ## [1] 279321.6

------------------------------------------------------------------------

For loop with a matrix
======================

``` r
A <- matrix(1:20, nrow = 5, ncol = 4)
A
```

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    1    6   11   16
    ## [2,]    2    7   12   17
    ## [3,]    3    8   13   18
    ## [4,]    4    9   14   19
    ## [5,]    5   10   15   20

``` r
# empty matrix B
B <- matrix(NA, nrow = 5, ncol = 4)

# for loop to get matrix B
for (i in 1:nrow(A)) {
  for (j in 1:ncol(A)) {
    B[i,j] <- A[i,j] + i
  }
}

B
```

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    2    7   12   17
    ## [2,]    4    9   14   19
    ## [3,]    6   11   16   21
    ## [4,]    8   13   18   23
    ## [5,]   10   15   20   25

``` r
set.seed(123)
X <- matrix(rnorm(12), nrow = 4, ncol = 3)
X
```

    ##             [,1]       [,2]       [,3]
    ## [1,] -0.56047565  0.1292877 -0.6868529
    ## [2,] -0.23017749  1.7150650 -0.4456620
    ## [3,]  1.55870831  0.4609162  1.2240818
    ## [4,]  0.07050839 -1.2650612  0.3598138

``` r
# empty matrix Y
Y <- matrix(NA, nrow = 4, ncol = 3)
Y
```

    ##      [,1] [,2] [,3]
    ## [1,]   NA   NA   NA
    ## [2,]   NA   NA   NA
    ## [3,]   NA   NA   NA
    ## [4,]   NA   NA   NA

``` r
for (i in 1:nrow(X)) {
  for (j in 1:ncol(X)) {
    
    if (X[i,j] > 0 ){
    Y[i,j] <- (X[i,j]) ** .5 
    }
    
    if (X[i,j] < 0 ){
    Y[i,j] <- (X[i,j]) ** 2
    }
    
    
  }
  }
  


Y
```

    ##            [,1]      [,2]      [,3]
    ## [1,] 0.31413295 0.3595660 0.4717668
    ## [2,] 0.05298168 1.3096049 0.1986146
    ## [3,] 1.24848240 0.6789081 1.1063823
    ## [4,] 0.26553416 1.6003799 0.5998448

------------------------------------------------------------------------

Dividing a number by 2 multiple times
=====================================

``` r
# your reduce() function

# This function will take in a number and divide it by 2 until it becomes off
reduce <- function(x) {
  
  while ((x %% 2) == 0) {
    
     x = x* .5
     print(x)
    
  }
  
  # Fill in.
  
}

reduce(898128000)
```

    ## [1] 449064000
    ## [1] 224532000
    ## [1] 112266000
    ## [1] 56133000
    ## [1] 28066500
    ## [1] 14033250
    ## [1] 7016625

------------------------------------------------------------------------

Average
=======

``` r
x = c(1:100)


z = 0

for (i in x){
  
  z = z + i
}

z / length(x)
```

    ## [1] 50.5

``` r
counter = 0
average = 0

while(counter < 1){
  
  average = sum(x)/length(x)
  counter = counter + 1

  
}

average
```

    ## [1] 50.5

``` r
counter2 = 0
avg = 0

repeat {
  
  if (counter2 == 1) { # If val_rep is odd,
    break                  # end the loop.
  }
  avg = sum(x) / length(x)
  counter2 = counter2 + 1
  
}

avg
```

    ## [1] 50.5

------------------------------------------------------------------------

Standard deviation
==================

``` r
sum = 0
x = c(1:100)

for (i in x){
  
  sum = sum + (i - mean(x))**2
}

sd = sqrt((1/(length(x)-1))*sum)
sd
```

    ## [1] 29.01149

``` r
#while loop
counter = 0

while (counter < 1){
  
  sd =  sqrt(sum((x-mean(x))^2/(length(x)-1)))
  counter = counter +1

}

sd
```

    ## [1] 29.01149

``` r
counter = counter - 1

repeat {
  
  if (counter ==1){
    break
  }
  
  sd =  sqrt(sum((x-mean(x))^2/(length(x)-1)))
  counter = counter +1
  
}

sd
```

    ## [1] 29.01149

------------------------------------------------------------------------

Geometric Mean
==============

``` r
sum = 1
x = c(1:100)

for(i in x){
  
  sum = sum * i}

geom_sum = sum**(1/length(x))

geom_sum
```

    ## [1] 37.99269

``` r
counter = 0

while (counter < 1){
  
  sum**(1/length(x))
  counter = counter + 1
}

counter = counter -1

repeat{
  
  if (counter == 1){
    break
  }
  
  geom_sum = sum ** (1/length(x))
  counter = counter + 1
  
}

geom_sum
```

    ## [1] 37.99269

------------------------------------------------------------------------

Distance Matrix of Letters
==========================

``` r
# random distance matrix
num_letters <- length(LETTERS)
set.seed(123)
values <- sample.int(num_letters) 
distances <- values %*% t(values)
diag(distances) <- 0
dimnames(distances) <- list(LETTERS, LETTERS)

distances[1:5, 1:5]
```

    ##     A   B   C   D   E
    ## A   0 160  80 168 184
    ## B 160   0 200 420 460
    ## C  80 200   0 210 230
    ## D 168 420 210   0 483
    ## E 184 460 230 483   0

``` r
#This function gets the distance from the matrix and returns the value associated with it
get_dist <- function(distance, ltrs){
  total = 0
  for (i in 1:(length(ltrs)-1)){ # 25
    if (!(ltrs[i] %in% LETTERS) & !(ltrs[i + 1] %in% LETTERS)) {
      stop("Unrecognized character")
    }
    total = total + distance[ltrs[i], ltrs[i+1]]
  }
  total
}


cal = c('C', 'A', 'L')
stats = c('S', 'T', 'A', 'T', 'S')
oski = c('O', 'S', 'K', 'I')
zzz = rep('Z', 3)
#lets = LETTERS
first = c('N', 'A','B')
last = c('K','I','Z')

# use your own 'first' and 'last' objects
strings <- list(
  cal = cal,
  stats = stats,
  oski = oski,
  zzz = zzz,
 # lets = 
  first = first,
  last = last
)

vec = rep(0, length(strings))

for (word in strings){
  
  print(get_dist(distances, word))
  vec[word] = get_dist(distances, word)
  
}
```

    ## [1] 136
    ## [1] 990
    ## [1] 834
    ## [1] 0
    ## [1] 312
    ## [1] 600

``` r
vec
```

    ##                           C   A   L   S   T   O   K   I   Z   N   B 
    ##   0   0   0   0   0   0 136 312 136 834 990 834 600 600 600 312 312

``` r
#The strings_dist looks a little strange, with letters and the distances that correspond to them in a vector
```
