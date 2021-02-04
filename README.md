
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eafithemer <img src="man/figures/hex-eafithemer.png" align="right" style="padding-left:10px;background-color:white;" width="100"/>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
<!-- badges: end -->

The goal of eafithemer is to provide a simple theme using EAFIT
university instutional aesthetics.

## Installation

<!-- You can install the released version of eafithemer from [CRAN](https://CRAN.R-project.org) with: -->
<!-- ``` r -->
<!-- install.packages("eafithemer") -->
<!-- ``` -->

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("camilogarciabotero/eafithemer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyverse)
library(palmerpenguins)
library(eafithemer)

palmerpenguins::penguins %>%
    ggplot2::ggplot(aes(bill_length_mm, flipper_length_mm)) +
  geom_point() +
  labs(
    title = "Little title",
    subtitle = "Testing the subtitle",
    x = "Titles of x axis",
    caption = "First attempt on package creation"
  ) +
  eafithemer::theme_eafit_light() +
  scale_color_manual(values = c("darkorange","purple","cyan4"))
```

<img src="man/figures/README-theme-light-1.png" width="100%" />

``` r
library(tidyverse)
library(palmerpenguins)
library(eafithemer)

palmerpenguins::penguins %>%
    ggplot2::ggplot(aes(bill_length_mm, flipper_length_mm)) +
  geom_point(color = "white") +
  labs(
    title = "Little title",
    subtitle = "Testing the subtitle",
    x = "Titles of x axis",
    caption = "First attempt on package creation"
  ) +
  eafithemer::theme_eafit_dark()
```

<img src="man/figures/README-theme-dark-1.png" width="100%" />

# Credits

This package was highly based on [Ryo
Nakagawara](https://github.com/Ryo-N7)
[`tvthemes`](https://ryo-n7.github.io/tvthemes/) package.
