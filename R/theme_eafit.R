#### light_theme ####

#' @title EAFIT light theme
#' @description ligther
#' @param text.font font, Default: "Courier"
#' @param title.font font, Default: "Courier"
#' @param legend.font font, Default: "Courier"
#' @param title.size title font size, Default: 18
#' @param text.size text font size, Default: 14
#' @param subtitle.size subtitle font size, Default: 12
#' @param axis.title.size title font size, Default: 14
#' @param axis.text.size text font size, Default: 12
#' @param legend.title.size title font size, Default: 10
#' @param legend.text.size text font size, Default: 9
#' @param title.color title color, Default: '#000359'
#' @param subtitle.color subtitle color, Default: '#000359'
#' @param text.color text color, Default: '#000359'
#' @param axis.title.color axis title color, Default: '#000359'
#' @param axis.text.color axis text color, Default: '#000359'
#' @param legend.title.color legend title color, Default: '#000359'
#' @param legend.text.color legend text color, Default: '#000359'
#' @param legend.position legend position, Default: 'bottom'
#' @param ticks ticks, Default: FALSE
#' @examples
#' library(ggplot2)
#' library(palmerpenguins)
#' library(eafithemer)
#'
#' ggplot(penguins, aes(bill_length_mm, flipper_length_mm)) +
#'   geom_point(aes(color = species, shape = species)) +
#'   labs(
#'     title = "Little title",
#'     subtitle = "Testing the subtitle",
#'     caption = "First attempt on package creation"
#'   ) +
#'   eafithemer::theme_eafit_light() +
#'   eafithemer::scale_color_eafit() +
#'   theme(
#'     legend.title = element_blank()
#'   )
#' @rdname theme_eafit_light
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit
#' @importFrom extrafont font_import
#' @export
theme_eafit_light <- function(
  text.font = "Courier",
  title.font = "Courier",
  legend.font = "Courier",
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#000359",# Navyblue from logo
  subtitle.color = "#000359",
  text.color = "#000359",
  axis.title.color = "#000359",
  axis.text.color = "#000359",
  legend.title.color = "#000359",
  legend.text.color = "#000359",
  legend.position = "bottom",
  ticks = FALSE
) {
  ## use theme_minimal as the base
  eafit_light <- ggplot2::theme_minimal() +
    ## main theme
    theme(
      text = ggplot2::element_text(family = text.font, size = text.size, color = text.color),
      plot.title = element_text(family = title.font, face = "bold", size = title.size, color = title.color),
      plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
      # background/panel options
      plot.background = element_rect(color = NA, fill = "#FFFFFF"),
      panel.background = element_rect(color = NA, fill = "#FFFFFF"),
      panel.grid = element_line(color = "#DDDDDD", linetype = "dashed"),# Soft gray
      # axis options
      axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
      axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
      # legend options
      legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
      legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
      legend.position = legend.position,
    )
  eafit_light
}

#### dark_theme ####

#' @title EAFIT dark theme
#' @description Darker version
#' @param text.font font, Default: "Courier"
#' @param title.font font, Default: "Courier"
#' @param legend.font font, Default: "Courier"
#' @param title.size title font size, Default: 18
#' @param text.size text font size, Default: 14
#' @param subtitle.size subtitle font size, Default: 12
#' @param axis.title.size title font size, Default: 14
#' @param axis.text.size text font size, Default: 12
#' @param legend.title.size title font size, Default: 10
#' @param legend.text.size text font size, Default: 9
#' @param title.color title color, Default: '#FFFFFF'
#' @param subtitle.color subtitle color, Default: '#FFFFFF'
#' @param text.color text color, Default: '#FFFFFF'
#' @param axis.title.color axis title color, Default: '#FFFFFF'
#' @param axis.text.color axis text color, Default: '#FFFFFF'
#' @param legend.title.color legend title color, Default: '#FFFFFF'
#' @param legend.text.color legend text color, Default: '#FFFFFF'
#' @param legend.position legend position, Default: 'bottom'
#' @param ticks ticks, Default: FALSE
#' @examples
#' library(ggplot2)
#' library(palmerpenguins)
#' library(eafithemer)
#'
#'   ggplot(penguins,aes(bill_length_mm, flipper_length_mm)) +
#'   geom_point(aes(color = species, shape = species)) +
#'   labs(
#'     title = "Little title",
#'     subtitle = "Testing the subtitle",
#'     caption = "First attempt on package creation"
#'   ) +
#'   eafithemer::theme_eafit_dark() +
#'   scale_color_brewer() +
#'   theme(
#'     legend.title = element_blank()
#'   )
#' @rdname theme_eafit_dark
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit
#' @importFrom extrafont font_import
#' @export
theme_eafit_dark <- function(
  text.font = "Courier",
  title.font = "Courier",
  legend.font = "Courier",
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#FFFFFF",# Navyblue from logo
  subtitle.color = "#FFFFFF",
  text.color = "#FFFFFF",
  axis.title.color = "#FFFFFF",
  axis.text.color = "#FFFFFF",
  legend.title.color = "#FFFFFF",
  legend.text.color = "#FFFFFF",
  legend.position = "bottom",
  ticks = FALSE
) {

  ## use theme_minimal as the base
  eafit_dark <- ggplot2::theme_minimal() +
    ## main theme
    theme(
      text = ggplot2::element_text(family = text.font, size = text.size, color = text.color),
      plot.title = element_text(family = title.font, face = "bold", size = title.size, color = title.color),
      plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
      # background/panel options
      plot.background = element_rect(color = NA, fill = "#000359"),
      panel.background = element_rect(color = NA, fill = "#000359"),
      panel.grid = element_line(color = "#DDDDDD", linetype = "dashed"),# Soft gray
      # axis options
      axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
      axis.title.x = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
      axis.title.y = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
      # legend options
      legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
      legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
      legend.position = legend.position,
    )
  eafit_dark
}

