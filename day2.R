# Part 1
input <- read.csv("day2.txt", header = FALSE, sep = " ")

aggregated_input <- aggregate(input$V2 ~ input$V1, FUN = sum)

horizontal <- aggregated_input[aggregated_input[, 1] == 'forward',][, 2]
depth <- aggregated_input[aggregated_input[, 1] == 'down',][, 2] -
  aggregated_input[aggregated_input[, 1] == 'up',][, 2]

horizontal * depth

# Part 2


