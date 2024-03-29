% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_eafit.R
\name{theme_eafit_dark}
\alias{theme_eafit_dark}
\title{EAFIT dark theme}
\usage{
theme_eafit_dark(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#FFFFFF",
  subtitle.color = "#FFFFFF",
  text.color = "#FFFFFF",
  axis.title.color = "#FFFFFF",
  axis.text.color = "#FFFFFF",
  legend.title.color = "#FFFFFF",
  legend.text.color = "#FFFFFF",
  legend.position = "bottom"
)
}
\arguments{
\item{text.font}{font, Default: NULL}

\item{title.font}{font, Default: NULL}

\item{legend.font}{font, Default: NULL}

\item{title.size}{title font size, Default: 18}

\item{text.size}{text font size, Default: 14}

\item{subtitle.size}{subtitle font size, Default: 12}

\item{axis.title.size}{title font size, Default: 14}

\item{axis.text.size}{text font size, Default: 12}

\item{legend.title.size}{title font size, Default: 10}

\item{legend.text.size}{text font size, Default: 9}

\item{title.color}{title color, Default: '#FFFFFF'}

\item{subtitle.color}{subtitle color, Default: '#FFFFFF'}

\item{text.color}{text color, Default: '#FFFFFF'}

\item{axis.title.color}{axis title color, Default: '#FFFFFF'}

\item{axis.text.color}{axis text color, Default: '#FFFFFF'}

\item{legend.title.color}{legend title color, Default: '#FFFFFF'}

\item{legend.text.color}{legend text color, Default: '#FFFFFF'}

\item{legend.position}{legend position, Default: 'bottom'}
}
\description{
Darker version
}
\examples{
library(ggplot2)
library(palmerpenguins)
library(eafithemer)

  ggplot(penguins,aes(bill_length_mm, flipper_length_mm)) +
  geom_point(aes(color = species, shape = species)) +
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
}
