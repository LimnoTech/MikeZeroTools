extract_CFL_stats <- function(cfl_warnings) {
  df <- cfl_warnings %>%
    group_by(element_number) %>%
    summarise(error_count = n(),
              earliest = min(time),
              latest = max(time),
              max_CFL = max(maximum_CFL_number)) %>%
    mutate(run_file = cfl_warnings$run_file[1])
}
