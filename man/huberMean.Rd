% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{huberMean}
\alias{huberMean}
\title{Tuning-free Huber mean estimation}
\usage{
huberMean(X, epsilon = 1e-05, iteMax = 500L)
}
\arguments{
\item{X}{An \eqn{n}-dimensional data vector.}

\item{epsilon}{The tolerance level in the iterative estimation procedure, iteration will stop when \eqn{|\mu_new - \mu_old| < \epsilon} or \eqn{|\tau_new - \tau_old| < \epsilon}. The defalut value is 1e-5.}

\item{iteMax}{The maximal number of iteration in the iterative estimation procedure, iteration will stop when this number is reached. The defalut value is 500.}
}
\value{
A list including the following terms will be returned:
\itemize{
\item \code{mu} The Huber mean estimator.
\item \code{tau} The robustness parameter determined by the tuning-free principle.
\item \code{iteration} The number of iterations in the estimation procedure.
}
}
\description{
The function calculates adaptive Huber mean estimator from a data sample, with \eqn{\tau} determined by a tuning-free principle.
}
\details{
The observed data are \eqn{X}, which is an \eqn{n}-dimensional vector whose distribution can be asymmetrix and/or heavy-tailed. The function outputs a robust estimator for the mean of \eqn{X}.
}
\examples{
n = 1000
X = rlnorm(n, 0, 1.5) - exp(1.5^2 / 2)
meanList = huberMean(X)
hMean = meanList$mu
}
\references{
Wang, L., Zheng, C., Zhou, W. and Zhou, W.-X. (2018). A New Principle for Tuning-Free Huber Regression. Preprint.
}
