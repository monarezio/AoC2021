# Part 1
input <- read.csv("day2.txt", header = FALSE, sep = " ")

aggregated_input <- aggregate(input$V2 ~ input$V1, FUN = sum)

horizontal <- aggregated_input[aggregated_input[, 1] == 'forward',][, 2]
depth <- aggregated_input[aggregated_input[, 1] == 'down',][, 2] -
  aggregated_input[aggregated_input[, 1] == 'up',][, 2]

horizontal * depth

# Part 2
input <- read.csv("day2_sample.txt", header = FALSE, sep = " ")
input$V3 <- 0
input[input$V1 == 'down', ]$V3 <- input[input$V1 == 'down', ]$V2
input[input$V1 == 'up', ]$V3 <- -input[input$V1 == 'up', ]$V2

input$Aim <- cumsum(input$V3)

head(input)

horizontal <- sum(input[input$V1 == 'forward',]$V2)
depth <- sum(input[input$V1 == 'forward',]$V2 * input[input$V1 == 'forward',]$Aim)

horizontal * depth
