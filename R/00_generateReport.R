#' generateReport
#'
#' @param .inputDatasetUrl
#' @param .reportOutputUrl
#'
#' @export
#'
#' @importFrom glue glue
generateReport <- function(.inputDatasetUrl, .reportOutputUrl){
  .checkDataset <- readRDS(glue::glue("{.inputDatasetUrl}"))

  print(.checkDataset)
}
