library(roxygen2)

#' A most_games Function
#'
#' This function return the most NBA games played by one player in a certain year.
#' @param
#' @keywords NBA most games
#' @export
#' @examples
#' most_games()

most_games <- function(x) {
  library(dplyr)
  nba2 <- filter(nba, Year == x)
  nba3 <- arrange(nba2, desc(nba2$G))
  return(nba3[1,6])
}

setwd("./nba")
document()
