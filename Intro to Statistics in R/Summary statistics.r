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


简易版
# Filter for Belgium
belgium_consumption <- food_consumption %>%
  filter(country == "Belgium")

# Filter for USA
usa_consumption <- food_consumption %>%
  filter(country == "USA")

# Calculate mean and median consumption in Belgium
mean(belgium_consumption$consumption)
median(belgium_consumption$consumption)

# Calculate mean and median consumption in USA
mean(usa_consumption$consumption)
median(usa_consumption$consumption)




画图 -- 其中某一个食物种类的另一个特性（CO2排放量）
food_consumption %>%
  # Filter for rice food category
  filter(food_category == "rice") %>%
  # Create histogram of co2_emission
  ggplot(aes(x = co2_emission)) +
    geom_histogram()





找outliers: IQR = quantile(0.75) - quantile(0.25)
Lower_threshold = quantile(0.25) - 1.5 * IQR
Upper_threshold = quantile(0.75) + 1.5 * IQR


quantile(msleep$sleep_total, probs =c(0,0.2,0.4,0.6,0.8,1))
seq(from, to, by)

0%      20%     40%     60%     80%   100%  
1.90    6.24    9.48  11.14   14.40   19.90

# Calculate variance and sd of co2_emission for each food_category 算不同group的var和std
food_consumption %>% 
  group_by(food_category) %>% 
  summarise(var_co2 = var(co2_emission),
     sd_co2 = sqrt(var_co2))

# Plot food_consumption with co2_emission on x-axis
把不同类别的食物对应的CO2都plot出来
ggplot(food_consumption, aes(x = co2_emission)) +
  # Create a histogram
  geom_histogram() +
  # Create a separate sub-graph for each food_category
  facet_wrap(~ food_category) 





找OUTLIER
# Calculate total co2_emission per country: emissions_by_country 先分组求和
emissions_by_country <- food_consumption %>%
  group_by(country) %>%
  summarize(total_emission = sum(co2_emission))

# Compute the first and third quartiles and IQR of total_emission 计算0.25和0.75分位数
q1 <- quantile(emissions_by_country$total_emission, 0.25)
q3 <- quantile(emissions_by_country$total_emission, 0.75)
iqr <- q3 - q1

# Calculate the lower and upper cutoffs for outliers 计算threshold
lower <- q1 - 1.5 * iqr
upper <- q3 + 1.5 * iqr

# Filter emissions_by_country to find outliers filter找outliers
emissions_by_country %>%
  filter(total_emission < lower | total_emission > upper
         

         
         
         
         


