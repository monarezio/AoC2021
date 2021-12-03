# Part 1

library(readr)
library(stringr)

input <- read_lines("day3_sample.txt")
matrix_input <- matrix(as.numeric(unlist(strsplit(input, ""))), ncol = str_length(input[1]), byrow = TRUE)
matrix_input

bin_vec <- apply(matrix_input, 2, FUN = function(x) {
  if((length(x[x == 0]) - length(x[x == 1])) < 0) 1
  else 0
})

not_bin_vec <- sapply(bin_vec, FUN = function(x) if(x == 1) 0 else 1)

gamma <- strtoi(paste(bin_vec, collapse = ""), base = 2)
gamma

epsilon <- strtoi(paste(not_bin_vec, collapse = ""), base = 2)
epsilon

gamma * epsilon
