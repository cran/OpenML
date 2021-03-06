#' @title Get OpenML configuration.
#'
#' @description
#' Returns a list of OpenML configuration settings.
#'
#' @return \code{list} of current configuration variables with class \dQuote{OMLConfig}.
#' @family config
#' @example /inst/examples/getOMLConfig.R
#' @export
getOMLConfig = function() {
  return(.OpenML.config)
}
