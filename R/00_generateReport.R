#' generateReport
#'
#' @param .inputDatasetUrl direct link to the .RDS file that has the check report output
#' @param .reportOutputUrl link to the folder where the report will be stored
#'
#' @export
#'
#' @importFrom glue glue
#' @importFrom rmarkdown render
generateReport <- function(.inputDatasetUrl, .reportOutputUrl){
  .checkDataset <- readRDS(glue::glue("{.inputDatasetUrl}"))

  rmarkdown::render("./inst/rmarkdown/template.Rmd"
                    ,output_dir = .reportOutputUrl
                    ,params = list(checkDataset = .checkDataset))
}
