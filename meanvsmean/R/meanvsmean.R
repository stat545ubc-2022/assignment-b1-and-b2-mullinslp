#'Difference in Means
#'
#'@description
#'This function calculates the difference between the sample mean of one numeric vector and the sample mean of another numeric vector.
#'
#'@param x An R object. Refers to the numeric vector in which the 1st mean is to be calculated from. *x* was named due to common usage in R and mathematical formulas.
#'@param y An R object. Refers to the numeric vector in which the 2nd mean is to be calculated from. *y* was named as it commonly refers to a second variable in mathetics, thus, it is useful to refer to the 2nd mean in this function.
#'@param na.rm A logical evaluating to TRUE or FALSE indicating whether NA values should be stripped before the computation proceeds. Note, that the default is TRUE for this function and NA values are stripped.
#'@param ... Further arguments passed to or from other methods.
#'@returns
#'A single numeric value representing the difference when the 2nd mean is subtracted from the 1st.
#'@examples
#'mean_vs_mean(c(2, 4, 6), c(1, 2, 3))
#'mean_vs_mean(c(5, 10, 15), c(5, NA, 15))
#'#'@export
mean_vs_mean <- function(x, y, na.rm = TRUE, ...) {
  if (missing(y)) {
    stop("Missing 'y' variable. Double check your input!")
  }
  mean(x, na.rm = na.rm, ...) - mean(y, na.rm = na.rm,  ...)}


