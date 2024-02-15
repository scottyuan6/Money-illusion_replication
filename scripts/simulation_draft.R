# Load necessary libraries
install.packages("ggplot2")
install.packages("ggplot")
install.packages("dplyr")
library(ggplot2)
library(dplyr)

set.seed(123) # For reproducibility

# Problem 1 Simulation and Plot
participants <- 100
scenario1 <- data.frame(
  Scenario = sample(c('Economic Terms', 'Happiness', 'Job Attractiveness'), size = participants, replace = TRUE),
  Choice = sample(c('Carolina', 'Maria'), size = participants, replace = TRUE, prob = c(0.25, 0.75))
)

ggplot(scenario1, aes(x = Scenario, fill = Choice)) +
  geom_bar(position = "dodge") +
  labs(title = "Scenario 1: Distribution of Choices", x = "Scenario", y = "Count")

# Problem 2 Simulation and Plot
scenario2 <- data.frame(
  House = sample(c('Andre', 'Bento', 'Marcelo'), size = participants, replace = TRUE, prob = c(0.35, 0.45, 0.20))
)

ggplot(scenario2, aes(x = House)) +
  geom_bar() +
  labs(title = "Scenario 2: House Preference Distribution", x = "House", y = "Count")

# Note: Make sure you have ggplot2 and dplyr packages installed

# Export the simulated data for Scenario 1
write.csv(scenario1, "scenario1_simulation.csv", row.names = FALSE)

# Export the simulated data for Scenario 2
write.csv(scenario2, "scenario2_simulation.csv", row.names = FALSE)

scenario1 <- read.csv('path_to_scenario1_simulation.csv')
scenario2 <- read.csv('path_to_scenario2_simulation.csv')

