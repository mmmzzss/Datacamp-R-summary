# Load data
data(email50)

# View the structure of the data
str(email50) = glimpse(email50)

tibble [50 x 21] (S3: tbl_df/tbl/data.frame)
 $ spam        : num [1:50] 0 0 1 0 0 0 0 0 0 0 ...
 $ to_multiple : num [1:50] 0 0 0 0 0 0 0 0 0 0 ...
 $ from        : num [1:50] 1 1 1 1 1 1 1 1 1 1 ...
 $ cc          : int [1:50] 0 0 4 0 0 0 0 0 1 0 ...
 $ sent_email  : num [1:50] 1 0 0 0 0 0 0 1 1 0 ...
 $ time        : POSIXct[1:50], format: "2012-01-04 13:19:16" "2012-02-16 20:10:06" ...
 $ image       : num [1:50] 0 0 0 0 0 0 0 0 0 0 ...
 $ attach      : num [1:50] 0 0 2 0 0 0 0 0 0 0 ...
 $ dollar      : num [1:50] 0 0 0 0 9 0 0 0 0 23 ...
 $ winner      : Factor w/ 2 levels "no","yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ inherit     : num [1:50] 0 0 0 0 0 0 0 0 0 0 ...
 $ viagra      : num [1:50] 0 0 0 0 0 0 0 0 0 0 ...
 $ password    : num [1:50] 0 0 0 0 1 0 0 0 0 0 ...
 $ num_char    : num [1:50] 21.705 7.011 0.631 2.454 41.623 ...
 $ line_breaks : int [1:50] 551 183 28 61 1088 5 17 88 242 578 ...
 $ format      : num [1:50] 1 1 0 0 1 0 0 1 1 1 ...
 $ re_subj     : num [1:50] 1 0 0 0 0 0 0 1 1 0 ...
 $ exclaim_subj: num [1:50] 0 0 0 0 0 0 0 0 1 0 ...
 $ urgent_subj : num [1:50] 0 0 0 0 0 0 0 0 0 0 ...
 $ exclaim_mess: num [1:50] 8 1 2 1 43 0 0 2 22 3 ...
 $ number      : Factor w/ 3 levels "none","small",..: 2 3 1 2 2 2 2 2 2 2 ...
 

# Identify variables type 
 glimpse(email50)
 ?email50      # Explanation of each column 

Rows: 50
Columns: 21
$ spam         <dbl> 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, ...
$ to_multiple  <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, ...
$ from         <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ...
$ cc           <int> 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...
$ sent_email   <dbl> 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, ...
$ time         <dttm> 2012-01-04 13:19:16, 2012-02-16 20:10:06, 2012-01-04 ...
$ image        <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...
$ attach       <dbl> 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, ...
$ dollar       <dbl> 0, 0, 0, 0, 9, 0, 0, 0, 0, 23, 4, 0, 3, 2, 0, 0, 0, 0,...
$ winner       <fct> no, no, no, no, no, no, no, no, no, no, no, no, yes, n...
$ inherit      <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...
$ viagra       <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...
$ password     <dbl> 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, ...
$ num_char     <dbl> 21.705, 7.011, 0.631, 2.454, 41.623, 0.057, 0.809, 5.2...
$ line_breaks  <int> 551, 183, 28, 61, 1088, 5, 17, 88, 242, 578, 1167, 198...
$ format       <dbl> 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, ...
$ re_subj      <dbl> 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, ...
$ exclaim_subj <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...
$ urgent_subj  <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...
$ exclaim_mess <dbl> 8, 1, 2, 1, 43, 0, 0, 2, 22, 3, 13, 1, 2, 2, 21, 10, 0...
$ number       <fct> small, big, none, small, small, small, small, small, s...





# Filter based on a factor 根据某些条件过滤dataset中的列
# For example, the following code filters the mtcars dataset for cars containing 6 cylinders:

mtcars_6cyl <- mtcars %>%
             filter(cyl == 6)

x %>% f(y) --> f(x,y)

# Subset of emails with big numbers: email50_big
email50_big <- email50 %>%
  filter(number == 'big') 

# Glimpse the subset
glimpse(email50_big)

Rows: 7
Columns: 21
$ spam         <dbl> 0, 0, 1, 0, 0, 0, 0
$ to_multiple  <dbl> 0, 0, 0, 0, 0, 0, 0
$ from         <dbl> 1, 1, 1, 1, 1, 1, 1
$ cc           <int> 0, 0, 0, 0, 0, 0, 0
$ sent_email   <dbl> 0, 0, 0, 0, 0, 1, 0
$ time         <dttm> 2012-02-16 20:10:06, 2012-02-04 23:26:09, 2012-01-24 ...
$ image        <dbl> 0, 0, 0, 0, 0, 0, 0
$ attach       <dbl> 0, 0, 0, 0, 0, 0, 0
$ dollar       <dbl> 0, 0, 3, 2, 0, 0, 0
$ winner       <fct> no, no, yes, no, no, no, no
$ inherit      <dbl> 0, 0, 0, 0, 0, 0, 0
$ viagra       <dbl> 0, 0, 0, 0, 0, 0, 0
$ password     <dbl> 0, 2, 0, 0, 0, 0, 8
$ num_char     <dbl> 7.011, 10.368, 42.793, 26.520, 6.563, 11.223, 10.613
$ line_breaks  <int> 183, 198, 712, 692, 140, 512, 225
$ format       <dbl> 1, 1, 1, 1, 1, 1, 1
$ re_subj      <dbl> 0, 0, 0, 0, 0, 0, 0
$ exclaim_subj <dbl> 0, 0, 0, 1, 0, 0, 0
$ urgent_subj  <dbl> 0, 0, 0, 0, 0, 0, 0
$ exclaim_mess <dbl> 1, 1, 2, 7, 2, 9, 9
$ number       <fct> big, big, big, big, big, big, big


# The droplevels() function removes unused levels of factor variables from our dataset. 
# As we saw in the video, it's often useful to determine which levels are unused (i.e. contain zero values) with the table() function.
# 先用table方程哪些levels是zero，不用； 再用droplevels把这些删去

# Table of the number variable
table(email50_big$number)
OUTPUT:
  none small   big 
    0     0     7 
# Drop levels
email50_big$number_dropped <- droplevels(email50_big$number)

# Table of the number_dropped variable
table(email50_big$number_dropped)
OUTPUT:
   big 
    7 





# Discretize a different variable 把numerical value转换成categorical value
# Calculate median number of characters: med_num_char 找到email50的中位数
med_num_char <- median(email50$num_char)

# Create num_char_cat variable in email50
email50_fortified <- email50 %>%
  mutate(num_char_cat = ifelse(num_char < med_num_char, "below median", "at or above median"))

# Using mutate(), create a new column called num_char_cat MUTATE方程创建一个新的列
  
# Count emails in each category 直接数各类有多少个
email50_fortified %>%
  count(num_char_cat)

# A tibble: 2 x 2
  num_char_cat           n
  <chr>              <int>
1 at or above median    25
2 below median          25



# Combining levels of a different factor
# Create number_yn column in email50
email50_fortified <- email50 %>%
  mutate(
    number_yn = case_when(
      # if number is "none", make number_yn "no"
      number == 'none' ~ "no", 
      # if number is not "none", make number_yn "yes"
      number != 'none' ~ "yes"  
    )
  )
  

# Visualize the distribution of number_yn
ggplot(email50_fortified, aes(x = number_yn)) +
  geom_bar()


