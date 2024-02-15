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
      cat(paste0("  \n"))
    },
    "criticalCheck2" = {
      cat(paste0("  \n"))
    },
    "criticalCheck3" = {
      cat(paste0("  \n"))
    },
    "criticalCheck4" = {
      cat(paste0("  \n"))
    },
    "criticalCheck5" = {
      cat(paste0("  \n"))
    },
    "criticalCheck6" = {
      if(nrow(.criticalCheckResults$inOldAndNotInNew) > 0){
        reactable::reactable(.criticalCheckResults$inOldAndNotInNew)
      }
      cat(paste0("  \n"))
    },
    "criticalCheck7" = {
      cat(paste0("  \n"))
    },
    "criticalCheck8" = {
      cat(paste0("  \n"))
    }
  )
}

