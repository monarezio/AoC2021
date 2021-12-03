# Part 1

library(readr)
library(stringr)

input <- read_lines("day3_sample.txt")
matrix_input <- matrix(as.numeric(unlist(strsplit(input, ""))), ncol = str_length(input[1]), byrow = TRUE)
matrix_input

bin_vec <- apply(matrix_input, 2, FUN = function(x) {
  if ((length(x[x == 0]) - length(x[x == 1])) < 0) 1
  else 0
})

not_bin_vec <- sapply(bin_vec, FUN = function(x) if (x == 1) 0 else 1)

gamma <- strtoi(paste(bin_vec, collapse = ""), base = 2)
gamma

epsilon <- strtoi(paste(not_bin_vec, collapse = ""), base = 2)
epsilon

gamma * epsilon

# Part 2

input <- read_lines("day3_sample.txt")
matrix_input <- matrix(as.numeric(unlist(strsplit(input, ""))), ncol = str_length(input[1]), byrow = TRUE)
matrix_input

column_counter <- 1
while (nrow(matrix_input) > 1) {
  col <- matrix_input[, column_counter]
  dif <- length(col[col == 1]) - length(col[col == 0])
  print(dif)
  if (dif >= 0) {
    matrix_input <- matrix_input[matrix_input[, column_counter] == 1,]
  } else {
    matrix_input <- matrix_input[matrix_input[, column_counter] == 0,]
  }
  column_counter <- column_counter + 1
}

oxygen_generator_rating <- strtoi(paste(matrix_input, collapse = ""), 2)

input <- read_lines("day3_sample.txt")
matrix_input <- matrix(as.numeric(unlist(strsplit(input, ""))), ncol = str_length(input[1]), byrow = TRUE)
matrix_input

column_counter <- 1
while (nrow(matrix_input) > 1) {
  col <- matrix_input[, column_counter]
  dif <- length(col[col == 1]) - length(col[col == 0])
  print(dif)
  if (dif >= 0) {
    matrix_input <- matrix_input[matrix_input[, column_counter] == 0,]
  } else {
    matrix_input <- matrix_input[matrix_input[, column_counter] == 1,]
  }
  column_counter <- column_counter + 1
}

CO2 <- strtoi(paste(matrix_input, collapse = ""), 2)

CO2 * oxygen_generator_rating