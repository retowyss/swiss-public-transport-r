% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stationboard.R
\name{stationboard}
\alias{stationboard}
\title{API "stationboard" endpoint}
\usage{
stationboard(..., .protocol = "https")
}
\arguments{
\item{...}{the \code{station} or \code{id} parameter is required, if both
are specified the \code{id} will be used}

\item{.protocol}{the connection protocol; either http or https (default)}
}
\value{
the stationboard as a dataframe
}
\description{
For detailed api documentation see 
    \url{https://transport.opendata.ch/docs.html#stationboard}
}
\examples{
stationboard(station = "Burgdorf")
stationboard(id = 8508005)
stationboard(station = "Basel", id = 8508005)

}
