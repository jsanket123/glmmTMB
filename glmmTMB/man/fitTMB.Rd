% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glmmTMB.R
\name{fitTMB}
\alias{fitTMB}
\title{Optimize a TMB model and package results}
\usage{
fitTMB(TMBStruc)
}
\arguments{
\item{TMBStruc}{a list contain}
}
\description{
This function (called internally by \code{\link{glmmTMB}}) runs
the actual model optimization, after all of the appropriate structures
have been set up. It can be useful to run \code{\link{glmmTMB}} with
\code{doFit=TRUE}, adjust the components as required, and then
finish the fitting process with \code{fitTMB} (however, it is the
user's responsibility to make sure that any modifications 
create an internally consistent final fitted object).
}
\examples{
m0 <- glmmTMB(count ~ mined + (1|site),
             family=poisson, data=Salamanders, doFit=FALSE)
names(m0)
fitTMB(m0)
}
