一张表里面，同时计算两个国家consumption的mean & median

food_consumption %>%
  # Filter for Belgium and USA
  filter(country %in% c("Belgium", "USA")) %>%
  # Group by country
  group_by(country) %>%
  # Get mean_consumption and median_consumption
  summarise(mean_consumption = mean(consumption),
      median_consumption = median(consumption))
      
OUTPUT
# A tibble: 2 × 3
  country mean_consumption median_consumption
  <chr>              <dbl>              <dbl>
1 Belgium             42.1               12.6
2 USA                 44.6               14.6
