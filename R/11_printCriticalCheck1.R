#' printCriticalCheck
#'
#' @param .criticalCheckId The id of the check to be printed (i.e. criticalCheck1 - criticalCheck8)
#' @param .criticalCheckResults The listing output to be printed
printCriticalCheck <- function(.criticalCheckId, .criticalCheckResults){
  cat(paste0(.criticalCheckId, "  \n"))
  cat(paste0("Title: ", .criticalCheckResults$checkTitle, "  \n"))
  cat(paste0("Description: ", .criticalCheckResults$checkDescription, "  \n"))
  cat(paste0("Pass: ", .criticalCheckResults$pass, "  \n"))
  cat(paste0("  \n"))

  # switch (.criticalCheckId,
  #   criticalCheck1 = {
  #
  #   },
  #   criticalCheck2 = {
  #
  #   },
  #   criticalCheck3 = {
  #
  #   },
  #   criticalCheck4 = {
  #
  #   },
  #   criticalCheck5 = {
  #
  #   },
  #   criticalCheck6 = {
  #
  #   },
  #   criticalCheck7 = {
  #
  #   },
  #   criticalCheck8 = {
  #
  #   }
  # )
}
