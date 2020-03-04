library(roxygen2)

#' A num_corr Function
#'
#' This function return correlation matrix of all numeric variables in a certain year.
#' @param
#' @keywords NBA numeric correlation
#' @export
#' @examples
#' num_corr()

num_corr <- function(x) {
  library(purrr)
  library(dplyr)
  nba2 <- filter(nba, Year == x)
  nba3 <- keep(nba2, is.numeric)
  return(cor(nba3))
}

setwd("./nba")
document()
