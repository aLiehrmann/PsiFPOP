#' PsiFPOP
#' @description PsiFPOP is an extension of Fpop, an exact segmentation algorithm based on functionnal pruning. This extension implements a least squares criterion with a multiscale penalty described in Verzelen et al. 2020.
#' @param y a vector of data ordered according to an attribute
#' @param beta a coefficient used in the calculation of the penalty (recommended: 2.5)
#' @param alpha a constant used in the calculation of the penalty (recommended: a+beta*log(length(y)))
#' @param sampling_method a sampling method for candidates ("rand_one", "last", "rand_with_replacement", "rand_without_replacement", "all", "only")
#' @param sampling_method_parameter a parameter used by the sampling method
#' @param wt a vector of weight linked to the data
#' @return a list with the changepoints and the number of intervals/candidates at each step

PsiFPOP <- function(
  y, 
  beta, 
  alpha, 
  sampling_method="rand_one", 
  sampling_method_parameter=1, 
  wt=-1) {
  
  if (wt==-1) {
    wt = rep(1,length(y));
  }
  return (PsiFPOP_cpp(y, beta, alpha, sampling_method, sampling_method_parameter, wt))
}

#' PsiOP
#' @description PsiOP is an exact segmentation algorithm.
#' @param y a vector of data ordered according to an attribute
#' @param beta a coefficient used in the calculation of the penalty (recommended: 2.5)
#' @param alpha a constant used in the calculation of the penalty (recommended: a+beta*log(length(y)))
#' @param wt a vector of weight linked to the data
#' @return a list with the changepoints and the number of intervals/candidates at each step

PsiOP <- function(
  y, 
  beta, 
  alpha, 
  wt=-1) {

  if (wt==-1) {
    wt = rep(1,length(y));
  }
  return (PsiOP_cpp(y, beta, alpha, wt))
}