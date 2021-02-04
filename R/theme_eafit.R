#### light_theme ####

#' @title EAFIT light theme
#' @description ligther
#' @param text.font
#' @param title.font
#' @param legend.font
#' @param title.size
#' @param text.size
#' @param subtitle.size
#' @param axis.title.size
#' @param axis.text.size
#' @param legend.title.size
#' @param legend.text.size
#' @param title.color
#' @param subtitle.color
#' @param text.color
#' @param axis.title.color
#' @param axis.text.color
#' @param legend.title.color
#' @param legend.text.color
#' @param legend.position
#' @param ticks
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit
#' @export
theme_eafit_light <- function(
  text.font = "Literation Mono Powerline",
  title.font = "Literation Mono Powerline",
  legend.font = "Literation Mono Powerline",
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
  legend.title.color = "##000359",
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
      legend.key = element_rect(colour = "black", linetype = "solid", size = 1.1),
      legend.background = element_rect(color = "black", fill = "#FFFFFF", linetype = "solid") ## #64719E  #8a2be2
    )

  if (ticks == FALSE) {
    eafit_light <- eafit_light + theme(
      axis.ticks = element_blank(),
      axis.ticks.x = element_blank(),
      axis.ticks.y = element_blank()
    )
  } else {
    eafit_light <- eafit_light + theme(
      axis.ticks = element_line(size = 0.15, color = "#93a1a1"),
      axis.ticks.x = element_line(size = 0.15, color = "#93a1a1"),
      axis.ticks.y = element_line(size = 0.15, color = "#93a1a1"),
      axis.ticks.length = grid::unit(4, "pt")
    )
  }
  eafit_light
}

#### dark_theme ####

#' @title EAFIT dark theme
#' @description Darker version
#' @param text.font
#' @param title.font
#' @param legend.font
#' @param title.size
#' @param text.size
#' @param subtitle.size
#' @param axis.title.size
#' @param axis.text.size
#' @param legend.title.size
#' @param legend.text.size
#' @param title.color
#' @param subtitle.color
#' @param text.color
#' @param axis.title.color
#' @param axis.text.color
#' @param legend.title.color
#' @param legend.text.color
#' @param legend.position
#' @param ticks
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit
#' @export
theme_eafit_dark <- function(
  text.font = "Literation Mono Powerline",
  title.font = "Literation Mono Powerline",
  legend.font = "Literation Mono Powerline",
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
      # axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
      axis.title.x = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
      axis.title.y = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
      # legend options
      legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
      legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
      legend.position = legend.position,
      legend.key = element_rect(colour = "black", linetype = "solid", size = 1.1),
      legend.background = element_rect(color = "black", fill = "#000359", linetype = "solid"), ## #64719E  #8a2be2

    )
  if (ticks == FALSE) {
    eafit_dark <- eafit_dark + theme(
      axis.ticks = element_blank(),
      axis.ticks.x = element_blank(),
      axis.ticks.y = element_blank()
    )
  } else {
    eafit_dark <- eafit_dark + theme(
      axis.ticks = element_line(size = 0.15, color = "#93a1a1"),
      axis.ticks.x = element_line(size = 0.15, color = "#93a1a1"),
      axis.ticks.y = element_line(size = 0.15, color = "#93a1a1"),
      axis.ticks.length = grid::unit(4, "pt")
    )
  }
  eafit_dark
}
