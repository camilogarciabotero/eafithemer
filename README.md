
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eafithemer

<!-- badges: start -->
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

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
