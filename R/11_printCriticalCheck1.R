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
      print(NULL)
    },
    "criticalCheck2" = {
      print(NULL)
    },
    "criticalCheck3" = {
      print(NULL)
    },
    "criticalCheck4" = {
      print(NULL)
    },
    "criticalCheck5" = {
      print(NULL)
    },
    "criticalCheck6" = {
      print(.criticalCheckResults$inOldAndNotInNew)
      # reactable::reactable(.criticalCheckResults[[.criticalCheckId]]$inOldAndNotInNew)
    },
    "criticalCheck7" = {
      print(NULL)
    },
    "criticalCheck8" = {
      print(NULL)
    }
  )
}

