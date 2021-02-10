eafit_palette <- c(
  "#000359" #navy blue
  ,"#009BD0" #light blue
  ,"#0E1526" #dark blue
  ,"#459D96" #gray green
  ,"#404376" #purple blue
  ,"#0F1114" #dark grey
  ,"#8A8A8A" #light grey
  ,"#4f5157" #darker blue/grey
  ,"#FFFFFF" #white
)

#' EAFIT Color and Fill Scales
#'
#' Color scales based on institutional aesthetics of EAFIT university
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2::scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name scale_eafit
NULL

eafit_pal <- function() scales::manual_pal(eafit_palette)

#' @rdname scale_eafit
#' @export
scale_colour_eafit <- function(...) ggplot2::discrete_scale("colour", "eafit", eafit_pal(), ...)

#' @rdname scale_eafit
#' @export
scale_color_eafit <- scale_colour_eafit

#' @rdname scale_eafit
#' @export
scale_fill_eafit <- function(...) ggplot2::discrete_scale('fill', 'eafit', eafit_pal(), ...)
