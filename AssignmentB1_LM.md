Assignment B1 LM
================
Liam Mullins
2022-11-03

# Exercise 1: Make a Function

It is helpful to create a function where we can compare the means of two
numerical variables. This can help one to determine which mean is
greater. The function below allows for two means to be compared, by
subtracting the second mean from the first. NA values are excluded.

``` r
mean_vs_mean <- function(x, y, na.rm = TRUE, ...) {
  if (missing(y)) {
    stop("Missing 'y' variable. Double check your input!")
  }
  mean(x, na.rm = na.rm, ...) - mean(y, na.rm = na.rm,  ...)}

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
#'
```

# Exercise 2: Document your Function

Roxygen2 tags were used to document the function in the same code chunk
where it was first made above. These tags help to provide information
about what the function is, how it works, and what ir returns.

# Exercise 3: Examples

Let’s use this function with 3 different examples.

First, we can test this function by loading the library(palmerpenguins),
and using the *penguins* dataset.

``` r
library(palmerpenguins)
mean_vs_mean(penguins$bill_length_mm, penguins$bill_depth_mm)
```

    ## [1] 26.77076

After comparing the mean bill_length_mm to bill_depth_mm, we can see
this function worked and produced an output of 26.77076. This tells me
that the mean bill_length mm is larger than the mean bill_depth_mm by
26.77076. This is useful information! If my answer were negative, I
would know the opposite were true.

Now, we will load the library *datateachr*. The dataset *parking_meters*
can be examined.

``` r
#The head() function will allow for a peek into this dataset.
library(datateachr)
head(parking_meters)
```

    ## # A tibble: 6 × 22
    ##   meter_head  r_mf_9a_6p r_mf_…¹ r_sa_…² r_sa_…³ r_su_…⁴ r_su_…⁵ rate_…⁶ time_…⁷
    ##   <chr>       <chr>      <chr>   <chr>   <chr>   <chr>   <chr>   <chr>   <chr>  
    ## 1 Twin        $2.00      $4.00   $2.00   $4.00   $2.00   $4.00   <NA>    METER …
    ## 2 Pay Station $1.00      $1.00   $1.00   $1.00   $1.00   $1.00   $ .50   METER …
    ## 3 Twin        $1.00      $1.00   $1.00   $1.00   $1.00   $1.00   <NA>    METER …
    ## 4 Single      $1.00      $1.00   $1.00   $1.00   $1.00   $1.00   <NA>    METER …
    ## 5 Twin        $2.00      $1.00   $2.00   $1.00   $2.00   $1.00   <NA>    METER …
    ## 6 Twin        $2.00      $1.00   $2.00   $1.00   $2.00   $1.00   <NA>    METER …
    ## # … with 13 more variables: t_mf_9a_6p <chr>, t_mf_6p_10 <chr>,
    ## #   t_sa_9a_6p <chr>, t_sa_6p_10 <chr>, t_su_9a_6p <chr>, t_su_6p_10 <chr>,
    ## #   time_misc <chr>, credit_card <chr>, pay_phone <chr>, longitude <dbl>,
    ## #   latitude <dbl>, geo_local_area <chr>, meter_id <chr>, and abbreviated
    ## #   variable names ¹​r_mf_6p_10, ²​r_sa_9a_6p, ³​r_sa_6p_10, ⁴​r_su_9a_6p,
    ## #   ⁵​r_su_6p_10, ⁶​rate_misc, ⁷​time_in_effect

Now, we can test the function to compare the mean parking rates in
Vancouver between different dates/times. For example, we might want to
see if the mean rate Mon-Fri from 9AM to 6PM is less than the mean Sat
rate at the same time.

Inputting the columns that correspond to this into the function will
result in an error. That is because the rates listed in this dataset are
character variables as they use currency notation. This function
requires numerical variables to work.

``` r
mean_vs_mean(parking_meters$r_sa_9a_6p, parking_meters$r_mf_9a_6p)
```

    ## Warning in mean.default(x, na.rm = na.rm, ...): argument is not numeric or
    ## logical: returning NA

    ## Warning in mean.default(y, na.rm = na.rm, ...): argument is not numeric or
    ## logical: returning NA

    ## [1] NA

Let’s load the dataset *cancer_sanmple*

``` r
head(cancer_sample)
```

    ## # A tibble: 6 × 32
    ##       ID diagn…¹ radiu…² textu…³ perim…⁴ area_…⁵ smoot…⁶ compa…⁷ conca…⁸ conca…⁹
    ##    <dbl> <chr>     <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>
    ## 1 8.42e5 M          18.0    10.4   123.    1001   0.118   0.278   0.300   0.147 
    ## 2 8.43e5 M          20.6    17.8   133.    1326   0.0847  0.0786  0.0869  0.0702
    ## 3 8.43e7 M          19.7    21.2   130     1203   0.110   0.160   0.197   0.128 
    ## 4 8.43e7 M          11.4    20.4    77.6    386.  0.142   0.284   0.241   0.105 
    ## 5 8.44e7 M          20.3    14.3   135.    1297   0.100   0.133   0.198   0.104 
    ## 6 8.44e5 M          12.4    15.7    82.6    477.  0.128   0.17    0.158   0.0809
    ## # … with 22 more variables: symmetry_mean <dbl>, fractal_dimension_mean <dbl>,
    ## #   radius_se <dbl>, texture_se <dbl>, perimeter_se <dbl>, area_se <dbl>,
    ## #   smoothness_se <dbl>, compactness_se <dbl>, concavity_se <dbl>,
    ## #   concave_points_se <dbl>, symmetry_se <dbl>, fractal_dimension_se <dbl>,
    ## #   radius_worst <dbl>, texture_worst <dbl>, perimeter_worst <dbl>,
    ## #   area_worst <dbl>, smoothness_worst <dbl>, compactness_worst <dbl>,
    ## #   concavity_worst <dbl>, concave_points_worst <dbl>, symmetry_worst <dbl>, …

``` r
#Perhaps we want to see how the mean "radius_mean" compares to the mean "radius_worst"
mean_vs_mean(cancer_sample$radius_mean, cancer_sample$radius_worst)
```

    ## [1] -2.141898

``` r
#This produces a final result of -2.141898. 
```

This means that the mean radius_mean is slightly less (-2.141898) than
the mean radius_worst. This information may be beneficial to clinicians
analysing this data. \# Exercise 4: Test the Function A good way of
checking whether a function is working is using a formal “yes or no”
check from the *testthat* package.

``` r
library(testthat)


test_that("mean_vs_mean works", {
  expect_equal(mean_vs_mean(c(2, 4, 6), c(1, 2, 3)), 2) 
  expect_equal(mean_vs_mean(c(5, 10, 15), c(5, NA, 15)), 0)
  expect_error(mean_vs_mean(vancouver_trees$diameter), "Missing 'y' variable. Double check your input!")
    })
```

    ## Test passed 😀
