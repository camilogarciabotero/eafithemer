
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eafithemer <img src="man/figures/logo.png" align="right" style="padding-left:10px;background-color:white;" width="100"/>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![R-CMD-check](https://github.com/camilogarciabotero/eafithemer/workflows/R-CMD-check/badge.svg)](https://github.com/camilogarciabotero/eafithemer/actions)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4526717.svg)](https://doi.org/10.5281/zenodo.4526717)
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
install.packages("devtools")
devtools::install_github("camilogarciabotero/eafithemer")
```

## Examples

This is a basic example Showing the light template:

``` r
library(tidyverse)
library(palmerpenguins)
library(eafithemer)

palmerpenguins::penguins %>%
    ggplot2::ggplot(aes(bill_length_mm, flipper_length_mm)) +
  geom_point(aes(color = species)) +
  labs(
    title = "Little title",
    subtitle = "Testing the subtitle",
    caption = "First attempt on package creation"
  ) +
  eafithemer::theme_eafit_light() +
  eafithemer::scale_color_eafit() +
  theme(
    legend.title = element_blank()
  )
```

<img src="man/figures/README-theme-light-1.png" width="100%" />

For dark template see:

``` r
library(tidyverse)
library(palmerpenguins)
library(eafithemer)

palmerpenguins::penguins %>%
    ggplot2::ggplot(aes(bill_length_mm, flipper_length_mm)) +
  geom_point(aes(color = species)) +
  labs(
    title = "Little title",
    subtitle = "Testing the subtitle",
    caption = "First attempt on package creation"
  ) +
  eafithemer::theme_eafit_dark() +
  scale_color_brewer() +
  theme(
    legend.title = element_blank()
  )
```

<img src="man/figures/README-theme-dark-1.png" width="100%" />

# A glance into EAFIT palette

``` r
scales::show_col(eafit_palette)
```

<img src="man/figures/README-palette-1.png" width="100%" />

# Citation

If you find this package useful, please consider the following citation!

> Camilo García. (2021). eafithemer v1.0.0: a simple ggplot theme for
> EAFIT institution (Version v1.0.0). Zenodo.
> <http://doi.org/10.5281/zenodo.4526717>

# Credits

This package was highly based on [Ryo
Nakagawara](https://github.com/Ryo-N7)
[`tvthemes`](https://ryo-n7.github.io/tvthemes/) package.
