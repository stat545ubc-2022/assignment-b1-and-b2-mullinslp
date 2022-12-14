
<!-- README.md is generated from README.Rmd. Please edit that file -->

# meanvsmean

<!-- badges: start -->
<!-- badges: end -->

The goal of meanvsmean is to allow for the easy calculation of the
difference between two sample means. It builds up the ‘mean()’ function.
Meanvsmean can be used with a dataset (by loading the library and
relevant dataset), or numerical values corresponding to a dataset can be
directly included.

## Installation

You can install the development version of meanvsmean like so:

``` r
# install_github("stat545ubc-2022/assignment-b1-and-b2-mullinslp/meanvsmean", ref = "0.1.0")
```

## Example

This is a basic example of how one can utilize this function:

``` r
library(meanvsmean)
## Let's say one wants to compare to sample means from two numerical datasets. The following code could do this.
mean_vs_mean(c(2, 4, 6), c(1, 2, 3))
#> [1] 2
```
