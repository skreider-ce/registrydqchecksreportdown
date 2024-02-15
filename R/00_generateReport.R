#' generateReport
#'
#' @param .inputDatasetUrl direct link to the .RDS file that has the check report output
#' @param .reportOutputUrl link to the folder where the report will be stored
#' @param .fileName name of the output file
#'
#' @export
#'
#' @importFrom glue glue
#' @importFrom rmarkdown render
generateReport <- function(.inputDatasetUrl, .reportOutputUrl, .fileName){
  .checkDataset <- readRDS(glue::glue("{.inputDatasetUrl}"))

  rmarkdown::render("./inst/rmarkdown/template.Rmd"
                    ,output_dir = .reportOutputUrl
                    ,output_file = glue::glue("{.fileName}.html")
                    ,params = list(checkDataset = .checkDataset))
}
