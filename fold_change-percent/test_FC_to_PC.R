
FC_to_PC <- function(x) (x - 1) * 100
PC_to_FC <- function(x) (x/100) + 1

# test conversions --------------------------------------------------------

test_that("FC_to_PC work correctly", {
  
  expect_equal(FC_to_PC(4), 300)
  expect_equal(PC_to_FC(300), 4)
  
})

test_that("PC_to_FC work correctly", {
  
  # A fold change of 1 is equivalent to 0% change
  expect_equal(FC_to_PC(1), 0)
  
  expect_equal(FC_to_PC(10),900)
  
})
