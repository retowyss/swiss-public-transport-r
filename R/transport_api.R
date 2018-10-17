#' Swiss public transport API
#'
#' @param .endpoint path to api endpoint - there are three endpoints available:
#'     locations, connections, and stationboard.
#' @param ... named parameters will be translated into a request query.
#'     For the full documentation see \url{https://transport.opendata.ch/docs.html}
#' @param .protocol protocol to be used
#' @param .version api version
#'
#' @return list of dataframes
#' 
transport_api <- function(.endpoint,
                 ...,
                 .protocol = "https",
                 .version = "v1") {
  stopifnot(.protocol %in% c("http", "https"))
  glue("{.protocol}://transport.opendata.ch/{.version}/{.endpoint}?{dots2req(...)}") %>%
    httpGET() %>%
    fromJSON() %>%
    map_if(is.data.frame, flatten)
}

dots2req <- function(...) {
  list(...) %>%
    imap(parse_dot) %>%
    glue_collapse(sep = "&") %>%
    str_replace_all(" ", "%20")
}

parse_dot <- function(x, y) {
  if (is_scalar_atomic(x)) {
    glue("{y}={x}")
  } else if (is_list(x)) {
    map(x, ~ glue("{y}[]={.}")) %>%
      glue_collapse(sep = "&")
  } else {
    stop()
  }
}

