test_that("mean_vs_mean works", {
  expect_equal(mean_vs_mean(c(2, 4, 6), c(1, 2, 3)), 2)
  expect_equal(mean_vs_mean(c(5, 10, 15), c(5, NA, 15)), 0)
  expect_error(mean_vs_mean(vancouver_trees$diameter), "Missing 'y' variable. Double check your input!")
})
