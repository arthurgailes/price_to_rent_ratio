census_data <- tidycensus::get_acs(
  "place",
  variables = c("B25077_001", "B25058_001"),
  year = 2022,
  survey = 'acs5',
  geometry = TRUE,
  output = 'wide'
)

save(census_data, file = "data.rds")