library(roxygen2)

#' A oldest_player Function
#'
#' This function return oldest NBA playerin a certain year.
#' @param
#' @keywords NBA oldest player
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(x) {
  library(dplyr)
  nba2 <- filter(nba, Year == x)
  nba3 <- arrange(nba2, desc(nba2$Age))
  return(nba3[1,2])
}


setwd("./nba")
document()
