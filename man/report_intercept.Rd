% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report_intercept.R
\name{report_intercept}
\alias{report_intercept}
\title{Report intercept}
\usage{
report_intercept(x, ...)
}
\arguments{
\item{x}{The R object that you want to report (see list of of supported
objects above).}

\item{...}{Arguments passed to or from other methods.}
}
\value{
An object of class \code{\link[=report_intercept]{report_intercept()}}.
}
\description{
Reports intercept of regression models (see list of supported objects in
\code{\link[=report]{report()}}).
}
\examples{
\donttest{
library(report)

# GLMs
report_intercept(lm(Sepal.Length ~ Species, data = iris))
report_intercept(glm(vs ~ disp, data = mtcars, family = "binomial"))

# Mixed models
if (require("lme4")) {
  model <- lme4::lmer(Sepal.Length ~ Petal.Length + (1 | Species), data = iris)
  report_intercept(model)
}

# Bayesian models
if (require("rstanarm")) {
  model <- stan_glm(Sepal.Length ~ Species, data = iris, refresh = 0, iter = 600)
  report_intercept(model)
}
}
}
