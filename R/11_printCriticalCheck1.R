#' printCriticalCheck
#'
#' @param .criticalCheckId The id of the check to be printed (i.e. criticalCheck1 - criticalCheck8)
#' @param .criticalCheckResults The listing output to be printed
#'
#' @importFrom reactable reactable
#' @importFrom rmarkdown paged_table
printCriticalCheck <- function(.criticalCheckId, .criticalCheckResults){
  # Create header and print critical checks to report
  # cat(paste0("### ", .criticalCheckId, " - ", .criticalCheckResults$checkTitle , "  \n"))
  cat(paste0("### Results of Critical Check ", as.numeric(gsub("\\D", "", .criticalCheckId)), " - ", .criticalCheckResults$checkTitle , "  \n"))
  cat(paste0("Description: ", .criticalCheckResults$checkDescription, "  \n"))
  cat(paste0("Pass: ", .criticalCheckResults$pass, "  \n"))
  cat(paste0("  \n"))

  switch (.criticalCheckId,
    "criticalCheck1" = {
      cat(paste0("Number Failed: ", .criticalCheckResults$nDuplicateRows, "  \n"))
      if(.criticalCheckResults$nDuplicateRows > 0){
        print(knitr::kable(.criticalCheckResults$listOfDuplicateRows))
      }
      cat(paste0("  \n"))
    },
    "criticalCheck2" = {
      cat(paste0("Number Failed: ", .criticalCheckResults$nOmittedVars, "  \n"))
      if(.criticalCheckResults$nOmittedVars > 0){
        print(knitr::kable(.criticalCheckResults$omittedVars, col.names = "Added Vars"))
      }
      cat(paste0("  \n"))
    },
    "criticalCheck3" = {
      cat(paste0("Number Failed: ", .criticalCheckResults$nExtraVars, "  \n"))
      if(.criticalCheckResults$nExtraVars > 0){
        print(knitr::kable(.criticalCheckResults$extraVars, col.names = "Removed Vars"))
      }
      cat(paste0("  \n"))
    },
    "criticalCheck4" = {
      cat(paste0("Number Failed: ", .criticalCheckResults$nMissingVariableLabels, "  \n"))
      if(.criticalCheckResults$nMissingVariableLabels > 0){
        print(knitr::kable(.criticalCheckResults$listOfVarsWithMissingLabels, col.names = "Vars wout Labels"))
      }
      cat(paste0("  \n"))
    },
    "criticalCheck5" = {
      cat(paste0("Number Added Rows: ", .criticalCheckResults$nAddedRows, "  \n"))
      cat(paste0("Number of Old Rows: ", .criticalCheckResults$nOldRows, "  \n"))
      cat(paste0("Percent of Row Increase: ", .criticalCheckResults$pctRowIncrease, "  \n"))
      cat(paste0("Comparison Threshold: ", 100 * .criticalCheckResults$threshold, "  \n"))
      cat(paste0("  \n"))
    },
    "criticalCheck6" = {
      cat(paste0("Number of Removed Rows: ", .criticalCheckResults$nRemovedRows, "  \n"))
      cat(paste0("Comparison Threshold: ", .criticalCheckResults$threshold, "  \n"))
      if(nrow(.criticalCheckResults$inOldAndNotInNew) > 0){
        print(knitr::kable(.criticalCheckResults$inOldAndNotInNew))
      }
      cat(paste0("  \n"))
    },
    "criticalCheck7" = {
      if(!is.null(.criticalCheckResults)){
        if(nrow(.criticalCheckResults$essentialVariablesMissingness) > 0){
          print(knitr::kable(.criticalCheckResults$essentialVariablesMissingness))
        }
      }
      cat(paste0("  \n"))
    },
    "criticalCheck8" = {
      if(!is.null(.criticalCheckResults)){
        if(nrow(.criticalCheckResults$essentialVariablesMissingness) > 0){
          .dsToPrint <- .criticalCheckResults$essentialVariablesMissingness |>
            dplyr::select(varName, nRows, nMissing, pctMissing, pctMissingComp, acceptableMissingness, skipLogic)
          print(knitr::kable(.dsToPrint))
        }
      }
      cat(paste0("  \n"))
    }
  )
}

