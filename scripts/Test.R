# Check if the specific columns are numeric
is_scenario1_numeric <- scenario1$your_column_name |> class() == "numeric"
is_scenario2_numeric <- scenario2$your_column_name |> class() == "numeric"

# Print the results
print(is_scenario1_numeric)
print(is_scenario2_numeric)
