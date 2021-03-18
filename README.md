# MikeZeroools

<!-- badges: start -->
<!-- badges: end -->

The goal of MikeZeroTools is to ...

## Installation



``` r
devtools::install_github("LimnoTech/MikeZeroTools")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(MikeZeroTools)
## basic example code

log <- read_log("TEST_20200127_FBO_4B_Reg1560_75.2_2cmWet_StabilityRefinement_v1.log")

cfl_warnings <- extract_CFL_warnings(log)

cfl_stats <- extract_CFL_stats(cfl_warnings)


```
