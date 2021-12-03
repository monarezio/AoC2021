library(readr)

# Part 1
input <- as.numeric(read_lines("day1.txt"))
input_shiffted <- c(Inf, input[seq_along(input) - 1])
length(input[input > input_shiffted])

# Part 2
input <- as.numeric(read_lines("day1.txt"))
indices <- which(input %% 1 == 0)
indices <- indices[3:length(indices)]

sums <- sapply(indices, FUN = function(i) {
  sum(input[(i - 2):i], na.rm = TRUE)
})
sums_shiffted <- c(Inf, sums[seq_along(sums) - 1])

length(sums[sums > sums_shiffted])


