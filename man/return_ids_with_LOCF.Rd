% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/return_ids_with_LOCF.R
\name{return_ids_with_LOCF}
\alias{return_ids_with_LOCF}
\title{Select individuals in a dataset with a last observation carried forward (LOCF) at a landmark time}
\usage{
return_ids_with_LOCF(
  data_long,
  individual_id,
  x_L,
  covariates,
  covariates_time
)
}
\arguments{
\item{data_long}{Data frame with repeated measurements data in long format}

\item{individual_id}{Character string specifying the column name in \code{data_long} which contains the individual identifiers}

\item{x_L}{Numeric specifying the landmark time(s)}

\item{covariates}{Vector of character strings specifying the column names in \code{data_long}
which correspond to the covariates}

\item{covariates_time}{Vector of character strings specifying the column names in \code{data_long}
which contain the times at which \code{covariates} were recorded. This should either be length 1 or
the same length as \code{covariates}. In the latter case the order of elements must correspond to the
order of elements in \code{covariates}.}
}
\value{
List of data frames which correspond to each landmark time \code{x_L}.
Each data frame is an updated version of \code{data_long} which contains only rows
of individuals with a LOCF at age \code{x_L}, other rows are removed.
}
\description{
To fit the LOCF model, all individuals must have at least one
non-\code{NA} entry by landmark time \code{x_L} for all covariates.
This function selects these individuals and removes the other rows.
}
\details{
Individuals have a LOCF if there is a non-\code{NA} entry for each of the covariates in
\code{covariates} up until (not including) time \code{x_L}.
}
\examples{
library(Landmarking)
data(data_repeat_outcomes)
data_repeat_outcomes <-
  return_ids_with_LOCF(
    data_long = data_repeat_outcomes,
    individual_id = "id",
    covariates =
      c("ethnicity", "smoking", "diabetes", "sbp_stnd", "tchdl_stnd"),
    covariates_time =
      c(rep("response_time_sbp_stnd", 4), "response_time_tchdl_stnd"),
    x_L = c(60,61)
  )
}
\author{
Isobel Barrott \email{isobel.barrott@gmail.com}
}
