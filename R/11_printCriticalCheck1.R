#' printCriticalCheck
#'
#' @param .criticalCheckId The id of the check to be printed (i.e. criticalCheck1 - criticalCheck8)
#' @param .criticalCheckResults The listing output to be printed
#'
#' @importFrom reactable reactable
printCriticalCheck <- function(.criticalCheckId, .criticalCheckResults){
  cat(paste0("### ", .criticalCheckId, " - ", .criticalCheckResults$checkTitle , "  \n"))
  cat(paste0("Description: ", .criticalCheckResults$checkDescription, "  \n"))
  cat(paste0("Pass: ", .criticalCheckResults$pass, "  \n"))
  cat(paste0("  \n"))

  switch (.criticalCheckId,
    "criticalCheck1" = {
      print("  \n")
    },
    "criticalCheck2" = {
      print("  \n")
    },
    "criticalCheck3" = {
      print("  \n")
    },
    "criticalCheck4" = {
      print("  \n")
    },
    "criticalCheck5" = {
      print("  \n")
    },
    "criticalCheck6" = {
      if(nrow(.criticalCheckResults$inOldAndNotInNew) > 0){
        reactable::reactable(.criticalCheckResults$inOldAndNotInNew)
      }
      print("  \n")
    },
    "criticalCheck7" = {
      print("  \n")
    },
    "criticalCheck8" = {
      print("  \n")
    }
  )
}

