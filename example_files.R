library(stringr)
library(tibble)
library(tidyr)

list_files <- list.files("data")

table <- enframe(list_files, name = NULL)



separate(data = table,
         col = value,
         sep = "_",
         into = c("date", "cohort", "file", "student_id", "student_cwl")) |>
  separate(col = "student_cwl",
           sep = ".",
           into = c("student_cwl", NA), extra = "drop")

stringr::str_detect(list_files, "slides" )
stringr::str_subset(list_files, "slides")

