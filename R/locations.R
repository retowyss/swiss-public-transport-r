#' API "locations" endpoint
#' 
#' @description For detailed api ocumentation see 
#'     \url{https://transport.opendata.ch/docs.html#locations}
#' 
#' @param ... the locations endpoint requires the passing of either the 
#'     \code{query} or the \code{x} and \code{y} parameters.
#' @param .protocol the connection protocol; either http or https (default)     
#'
#' @return the locations as a dataframe
#' @export
#'
#' @examples
#' # You need to specify either query or x and y
#' locations(query = "Bern")
#' locations(x = 46.94882, y = 7.439123)
#' 
locations <- function(..., .protocol = "https") {
  has_qy <- "query" %in% names(list(...))
  has_xy <- all(c("x", "y") %in% names(list(...)))
  stopifnot(xor(has_qy, has_xy)) 
  
  res <- transport_api("locations", ..., .protocol = .protocol)
  select_(res$stations, 
    .dots = c("id", "name", "coordinate.x", "coordinate.y")
  )
}