#' printCriticalChecks
#'
#' @param .criticalChecksToPrint An r dataframe with the critical checks to print
printCriticalChecks <- function(.criticalChecksToPrint){
  for(criticalCheckId in names(.criticalChecksToPrint)){
    cat(paste0("### ", criticalCheckId, " \n"))

    printCriticalCheck(criticalCheckId, .criticalChecksToPrint[[criticalCheckId]])
  }
}
