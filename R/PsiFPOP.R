#' PsiFPOP
#' @description PsiFPOP is an exact segmentation algorithm that extends 
#' functionnal pruning ideas from FPOP to a least squares criterion with a 
#' multiscale penalty described in Verzelen et al. 2020 (arXiv:2010.11470).
#' @param y A vector of observations.
#' @param beta A constant used in the calculation of the penalty.
#' @param alpha A constant used in the calculation of the penalty.
#' (recommended: gamma+beta*log(length(y)))
#' @param sampling_method A sampling method for candidates ("rand_one", "last",
#' "rand_with_replacement", "rand_without_replacement", "all", "only").
#' @param sampling_method_parameter A parameter used by the sampling method.
#' @param wt A vector of weights associated to the observations.
#' @return A list with the changepoints and the number of intervals/candidates 
#' at each step.

PsiFPOP <- function(
  y, 
  beta, 
  alpha, 
  sampling_method="rand_one", 
  sampling_method_parameter=1, 
  wt=NULL) {
  
  if (is.null(wt)) {
    wt = rep(1,length(y));
  } else if (length(wt) != length(y)){
    warning("length(wt) != length(y)")
  }
  return (PsiFPOP_cpp(y, beta, alpha, sampling_method, sampling_method_parameter, wt))
}

#' PsiOP
#' @description PsiOP is an exact segmentation algorithm that implements a least 
#' squares criterion with a multiscale penalty described in Verzelen et al. 2020.
#' (arXiv:2010.11470)
#' @param y A vector of observations.
#' @param beta a constant used in the calculation of the penalty.
#' @param alpha a constant used in the calculation of the penalty 
#' (recommended: gamma+beta*log(length(y))).
#' @param wt A vector of weights associated to the observations.
#' @return A list with the changepoints and the number of intervals/candidates
#'  at each step.

PsiOP <- function(
  y, 
  beta, 
  alpha, 
  wt=NULL) {

  if (is.null(wt)) {
    wt = rep(1,length(y));
  } else if (length(wt) != length(y)){
    warning("length(wt) != length(y)")
  }
  return (PsiOP_cpp(y, beta, alpha, wt))
}