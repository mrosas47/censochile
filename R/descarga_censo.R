descarga_censo <- function(year, destfile, mode = 'w') {

  y <- str_sub(as.character(year), -2, -1)
  if (str_sub(destfile, -4, -1) != '.rds') destfile <- paste(destfile, '.zip', sep = '')


  tryCatch({

    download.file(str_glue('https://censochile.mra-portal.dev/assets/c{y}.rds'), destfile, mode = mode)
    cli::cli_alert_success(str_glue('Data del censo {year} se descargó exitosamente como {destfile}.'))

  }, error = function(e) {

    cli::cli_alert_danger(e)
    return(NULL)

  })

}
