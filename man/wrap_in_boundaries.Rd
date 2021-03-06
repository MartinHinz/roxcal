% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsing_functions.R
\name{wrap_in_boundaries}
\alias{wrap_in_boundaries}
\title{Wrap OxCal commands in Boundary commands}
\usage{
wrap_in_boundaries(phases_strings, boundary_names = NA)
}
\arguments{
\item{phases_strings}{a vector containing strings of OxCal code, usually consisting of Phase or R_Date commands, but any other code strings might be used that can be interpreted by OxCal inbetween a Boundary}

\item{boundary_names}{a optional vector of names for the resulting Boundaries (length of phases_strings + 1). If not given, the boundaries are named with consecutive numbers.}
}
\value{
a string containing the respective Oxcal code
}
\description{
wrap_in_boundaries takes a set of Phases or R_Dates as vectors, and returns
a bit of oxcal code that can be used to feed it into OxCal.
In this code the Phases and/or R_Dates are interleaved and wrapped in OxCal Boundaries, the number of Boundaries is equal to the number of strings + 1.
The resulting string starts with a boundary, than the OxCal strings from the vector are interleaved with Boundary commands.
For details concerning the Oxcal simulation please consult the help page of Oxcal.
}
