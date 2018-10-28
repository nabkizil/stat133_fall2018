source("functions.R")
# context with one test that groups expectations
context("Test for range value") 
test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(stat_range(x), 4)
  expect_length(stat_range(x), 1)
  expect_type(stat_range(x), 'double')

})  


y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]


test_that("y meets expectations",{
  
  expect_length(stat_range(y), 1)
  expect_equal(stat_range(y), NA_real_)
  
})

test_that("z meets expectations", {
  
  expect_length(stat_range(z), 1)
  expect_type(stat_range(z), 'integer')
  expect_equal(stat_range(z), 1L)
  
})

test_that("w meets expectations",{
  
  expect_type(stat_range(w), 'double')
  
  
})


test_that("function centers meets expectations",{
  
  
  expect_length(stat_centers(x), 2)
  expect_type(stat_centers(x)[1], 'double')
  
  
})

test_that("function spreads meets expectations",{
  
  expect_length(stat_spreads(x), 3)
  expect_type(stat_spreads(x)[2], 'double')
})
