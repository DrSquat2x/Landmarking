% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_LOCF_landmark.R
\name{fit_LOCF_longitudinal}
\alias{fit_LOCF_longitudinal}
\title{Find the last observation carried forward (LOCF) values for covariates in a dataset}
\usage{
fit_LOCF_longitudinal(
  data_long,
  x_L,
  covariates,
  covariates_time,
  cv_name = NA,
  individual_id
)
}
\arguments{
\item{data_long}{Data frame in long format i.e. there may be more than one row per individual}

\item{x_L}{Numeric specifying the landmark time(s)}

\item{covariates}{Vector of character strings specifying the column names in \code{data_long}
which correspond to the covariates}

\item{covariates_time}{Vector of character strings specifying the column names in \code{data_long}
which contain the times at which \code{covariates} were recorded. This should either be length 1 or
the same length as \code{covariates}. In the latter case the order of elements must correspond to the
order of elements in \code{covariates}.}

\item{cv_name}{Character string specifying the column name in \code{data_long} that indicates cross-validation fold}

\item{individual_id}{Character string specifying the column name in \code{data_long} which contains the individual identifiers}
}
\value{
List containing \code{data_longitudinal}, \code{model_longitudinal}, and \code{call}.

\code{data_longitudinal} has one row for each individual in \code{data_long} and
contains the LOCF value of \code{covariates} at the landmark time \code{x_L}.

\code{model_longitudinal} indicates that the LOCF approach is used.

\code{call} contains the call of the function.
}
\description{
This function is a helper function for \code{fit_LOCF_landmark}.
}
\details{
This function extracts the LOCF value for each of the \code{covariates} in \code{data_long} up to (and including) time \code{x_L}.
}
\author{
Isobel Barrott \email{isobel.barrott@gmail.com}
}
