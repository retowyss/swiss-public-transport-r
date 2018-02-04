#' API "stationboard" endpoint
#'
#' @description For detailed api documentation see 
#'     \url{https://transport.opendata.ch/docs.html#stationboard}
#'
#' @param ... the \code{station} or \code{id} parameter is required, if both
#'     are specified the \code{id} will be used
#' @param .protocol the connection protocol; either http or https (default)
#'
#' @return the stationboard as a dataframe
#' @export
#'
#' @importFrom dplyr select_
#'
#' @examples
#' stationboard(station = "Burgdorf")
#' stationboard(id = 8508005)
#' stationboard(station = "Basel", id = 8508005)
#' 
stationboard <- function(..., .protocol = "https") {
  stopifnot(any(c("station", "id") %in% names(list(...))))
  res <- transport_api("stationboard", ..., .protocol = .protocol)
  select_(res$stationboard, .dots = c(
    "name",
    "category",
    "number",
    "operator",
    "to",
    "stop.departure",
    "stop.departureTimestamp",
    "stop.platform",
    "stop.station.id",
    "stop.station.name",
    "stop.station.coordinate.x",
    "stop.station.coordinate.y",
    "stop.location.id"
  ))
}