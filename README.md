# ErrorLogging

<!-- badges: start -->
<!-- badges: end -->

The goal of ErrorLogging is to ...

## Installation

You can install the released version of ErrorLogging from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("ErrorLogging")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ErrorLogging)
## basic example code

log <- read_log("TEST_20200127_FBO_4B_Reg1560_75.2_2cmWet_StabilityRefinement_v1.log")

cfl_warnings <- extract_CFL_warnings(log)

cfl_stats <- extract_CFL_stats(cfl_warnings)


```

