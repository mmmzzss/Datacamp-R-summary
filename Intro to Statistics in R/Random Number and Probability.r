Sampling with replacement in R
sales_counts %>% sample_n(2, replace = TRUE)

计算事件的概率
# Calculate probability of picking a deal with each product
amir_deals %>%
  count(product) %>%      数一下每个product有多少个deal

result：
 amir_deals$product    n
1           Product A 23
2           Product B 62
3           Product C 15
4           Product D 40
5           Product E  5
6           Product F 11
7           Product G  2
8           Product H  8
9           Product I  7
10          Product J  2
11          Product N  3


amir_deals %>%
  count(product) %>%
  mutate(prob = n / sum(sum(n))）    mutate用来再加一列
         

     product  n       prob
1  Product A 23 0.12921348
2  Product B 62 0.34831461
3  Product C 15 0.08426966
4  Product D 40 0.22471910
5  Product E  5 0.02808989
6  Product F 11 0.06179775
7  Product G  2 0.01123596
8  Product H  8 0.04494382
9  Product I  7 0.03932584
10 Product J  2 0.01123596
11 Product N  3 0.01685393

         
     
         
         
Sampling deals
# Set random seed to 31 确保每次都一样
set.seed(31)

# Sample 5 deals with replacement
amir_deals %>%
  sample_n(5, replace = TRUE)
         
         
# Create a histogram of group_size and set bins to 5         
ggplot(restaurant_groups, aes(x = group_size)) +
  geom_histogram(bins =5)


         
         
         
# Create probability distribution
size_distribution <- restaurant_groups %>%
  count(group_size) %>%
  mutate(probability = n / sum(n))

result:
  group_size n   probability
1          2 6         0.6
2          3 1         0.1
3          4 2         0.2
4          6 1         0.1

         
         
# Calculate expected group size
expected_val <- sum(size_distribution$group_size *
                    size_distribution$probability)
expected_val
2.9
        
         
# Calculate probability of picking group of 4 or more 算组里人数>=4的概率
size_distribution %>%
  # Filter for groups of 4 or larger
  filter(group_size >= 4) %>%
  # Calculate prob_4_or_more by taking sum of probabilities
  summarise(prob_4_or_more = sum(probability))
 
