% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PsiFPOP.R
\name{PsiOP}
\alias{PsiOP}
\title{PsiOP}
\usage{
PsiOP(y, beta, alpha, wt = -1)
}
\arguments{
\item{y}{A vector of observations.}

\item{beta}{a constant used in the calculation of the penalty.}

\item{alpha}{a constant used in the calculation of the penalty 
(recommended: gamma+beta*log(length(y))).}

\item{wt}{A vector of weights associated to the observations.}
}
\value{
A list with the changepoints and the number of intervals/candidates
 at each step.
}
\description{
PsiOP is an exact segmentation algorithm that implements a least 
squares criterion with a multiscale penalty described in Verzelen et al. 2020.
(arXiv:2010.11470)
}
