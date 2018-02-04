#' API "connections" endpoint
#' 
#' @description For detailed api documentation see 
#'     \url{https://transport.opendata.ch/docs.html#connections}
#' 
#' @param ... \code{from} and \code{to} are required
#' @param .protocol the connection protocol; either http or https (default)
#' 
#' @return the connections as a dataframe
#' @export
#'
#' @importFrom dplyr select_
#'
#' @examples
#' connections(from = "Bern", to = "Burgdorf")
#' connections(from = "Basel", to = "Bern")
#' 
connections <- function(..., .protocol = "https") {
  stopifnot(all(c("from", "to") %in% names(list(...))))
  res <- transport_api("connections", ..., .protocol = .protocol)
  select_(res$connections, .dots = c(
    "from.station.name",
    "to.station.name",
    "duration", 
    "from.platform",
    "to.platform",
    "transfers", 
    "from.departure",
    "from.prognosis.departure",
    "from.departureTimestamp",
    "from.delay",
    "to.arrival",
    "to.arrivalTimestamp",
    "to.delay",
    "from.station.id",
    "to.station.id",
    "from.station.coordinate.x",
    "from.station.coordinate.y",
    "to.location.coordinate.x",
    "to.location.coordinate.y"
  ))
}