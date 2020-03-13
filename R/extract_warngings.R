#' Title
#'
#' @param log
#'
#' @return
#' @export
#'
#' @examples
extract_CFL_warnings <- function(log) {

  #Search warning and create dataframe from following lines
  df <- data.frame("run_file" = log[1],
             "warning" = log[grep("Warning: CFL",log)],
             "time" = log[grep("Warning: CFL",log) +1],
             "time_step_interval" = log[grep("Warning: CFL",log) +2],
             "maximum_CFL_number" = log[grep("Warning: CFL",log) +3],
             "element_number" = log[grep("Warning: CFL",log) +4],
             "x_coordinate" = log[grep("Warning: CFL",log) +5],
             "y_coordinate" = log[grep("Warning: CFL",log) +6],
             "still_water_depth" = log[grep("Warning: CFL",log) +7],
             "length" = log[grep("Warning: CFL",log) +8]
             )
  #remove label and format as numeric
  df$time <- as.numeric(gsub(".*:", "",df$time))
  df$time_step_interval <- as.numeric(gsub(".*:", "",df$time_step_interval))
  df$maximum_CFL_number <- as.numeric(gsub(".*:", "",df$maximum_CFL_number))
  df$element_number <- as.numeric(gsub(".*:", "",df$element_number))
  df$x_coordinate <- as.numeric(gsub(".*:", "",df$x_coordinate))
  df$y_coordinate <- as.numeric(gsub(".*:", "",df$y_coordinate))
  df$still_water_depth <- as.numeric(gsub(".*:", "",df$still_water_depth))
  df$length <- as.numeric(gsub(".*:", "",df$length))

  return(df)
}


