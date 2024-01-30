#' @title Descarga de coberturas geográficas censales
#'
#' @param year Año de las coberturas solicitadas
#' @param destfile Nombre del archivo de destino
#' @param unzip Descomprimir `.zip` descargado?
#' @param mode Modo de descarga para pasar a `download.file()`
#'
#' @return
#' @export descarga_shp
#'
#' @examples

descarga_shp <- function(year, destfile, unzip = F, mode = 'wb') {

  y <- stringr::str_sub(as.character(year), -2, -1)
  if (stringr::str_sub(destfile, -4, -1) != '.zip') destfile <- paste(destfile, '.zip', sep = '')

  tryCatch({

    download.file(stringr::str_glue('https://censochile.mra-portal.dev/assets/coberturas_{as.character(year)}.zip'), destfile, mode = mode)

  }, error = function(e) return(cli::cli_alert_danger(e))

  )

  if (unzip) unzip(destfile)

}

