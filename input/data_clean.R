#### Data Clean ####

# Load necessary packages
install.packages("readxl")
install.packages("openxlsx")
library(openxlsx)
library(readxl)
library(dplyr)

# Step 1: Reading the Excel file
data <- read_excel("input/moneydataABCDEF.xlsx")

# Step 2: Inspecting the Data
# Checking the first few rows to understand the data structure
head(data)

# Checking for missing values
summary(data)

# Checking for duplicates
any(duplicated(data))

# Step 3: Cleaning the Data
# Removing duplicates (if any)
data_cleaned <- data %>%
  distinct()

# Handling missing values
# This could involve imputation, removing rows, or even filling with a specific value
# Example: Replacing NA values with 0 (this is just an example, adjust based on your need)
data_cleaned <- data_cleaned %>%
  mutate_if(is.numeric, ~replace(., is.na(.), 0))

# Converting data types if necessary
# Example: Converting a character column to factor
# data_cleaned$YourColumn <- as.factor(data_cleaned$YourColumn)

# Inspect the cleaned data
summary(data_cleaned)

# Optionally, write the cleaned data back to a new Excel file
write.xlsx(data_cleaned, "input/moneydataABCDEF_cleaned.xlsx")

