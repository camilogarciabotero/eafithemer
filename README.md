
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eafithemer

<!-- \ifelse{html}{\out{<a href='https://www.tidyverse.org/lifecycle/#experimental'><img src='figures/lifecycle-experimental.svg' alt='Experimental lifecycle'></a>}}{\strong{Experimental}} -->
<!-- badges: start -->
<p align="left">
<img src="man/figures/lifecycle-experimental.svg">
</p>
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
library(eafithemer)
library(tidyverse)
palmerpenguins::penguins %>%
  ggplot2::ggplot(aes(species, body_mass_g)) +
  geom_col() +
  labs(
    title = "Little title",
    subtitle = "Testing the subtitle",
    x = "Titles of x axis",
    caption = "First attempt on package creation"
  ) +
  theme_eafit_light()
```

<img src="man/figures/README-theme-light-1.png" width="100%" />

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
library(tidyverse)
library(eafithemer)

palmerpenguins::penguins %>%
  ggplot2::ggplot(aes(species, body_mass_g)) +
  geom_col() +
  labs(
    title = "Little title",
    subtitle = "Testing the subtitle",
    x = "Titles of x axis",
    caption = "First attempt on package creation"
  ) +
  theme_eafit_dark()
```

# Credits

This package was highly based on [Ryo
Nakagawara](https://github.com/Ryo-N7)
[`tvthemes`](https://ryo-n7.github.io/tvthemes/) package.
