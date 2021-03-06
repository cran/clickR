% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fix_functions.R
\name{fix_levels}
\alias{fix_levels}
\title{Fix levels}
\usage{
fix_levels(
  data,
  factor_name,
  method = "dl",
  levels = NULL,
  plot = FALSE,
  k = ifelse(!is.null(levels), length(levels), 2),
  track = TRUE,
  ...
)
}
\arguments{
\item{data}{data.frame with the factor to fix}

\item{factor_name}{Name of the factor to fix (as character)}

\item{method}{Method from stringdist package to estimate distances}

\item{levels}{Optional vector with the levels names. If "auto", levels are assigned based on frequency}

\item{plot}{Optional: Plot cluster dendrogram?}

\item{k}{Number of levels for clustering}

\item{track}{Keep track of changes?}

\item{...}{Further parameters passed to stringdist::stringdistmatrix function}
}
\description{
Fixes levels of a factor
}
\examples{
mydata <- data.frame(factor1=factor(c("Control", "Treatment", "Tretament", "Tratment", "treatment",
"teatment", "contrl", "cntrol", "CONTol", "not available", "na")))
fix_levels(mydata, "factor1", k=4, plot=TRUE)   #Chose k to select matching levels
fix_levels(mydata, "factor1", levels=c("Control", "Treatment"), k=4)
}
