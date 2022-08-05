# 表格里面既有number，也有string

?vector name # shows the full overview of variables' meaning. 

# Structure of data frame
str(vector_name)





# create a data frame
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name,type,diameter,rotation,rings)

    name               type    diameter rotation rings
1 Mercury Terrestrial planet    0.382    58.64 FALSE
2   Venus Terrestrial planet    0.949  -243.02 FALSE
3   Earth Terrestrial planet    1.000     1.00 FALSE
4    Mars Terrestrial planet    0.532     1.03 FALSE
5 Jupiter          Gas giant   11.209     0.41  TRUE
6  Saturn          Gas giant    9.449     0.43  TRUE
7  Uranus          Gas giant    4.007    -0.72  TRUE
8 Neptune          Gas giant    3.883     0.67  TRUE


# name，type...这些都是columns

str(planets_df)
'data.frame':	8 obs. of  5 variables:
 $ name    : chr  "Mercury" "Venus" "Earth" "Mars" ...
 $ type    : chr  "Terrestrial planet" "Terrestrial planet" "Terrestrial planet" "Terrestrial planet" ...
 $ diameter: num  0.382 0.949 1 0.532 11.209 ...
 $ rotation: num  58.64 -243.02 1 1.03 0.41 ...
 $ rings   : logi  FALSE FALSE FALSE FALSE TRUE TRUE ...






# 索引
planet_df[1:3, 'type']
rings_vector <- planet_df$rings
[1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

# 反向找其他variables
planets_df[rings_vector, "name"]
[1] "Jupiter" "Saturn"  "Uranus"  "Neptune"

planets_df[rings_vector,] == subset(planets_df, subset = rings) # only return rows when rings are TRUE

name      type diameter rotation rings
5 Jupiter Gas giant   11.209     0.41  TRUE
6  Saturn Gas giant    9.449     0.43  TRUE
7  Uranus Gas giant    4.007    -0.72  TRUE
8 Neptune Gas giant    3.883     0.67  TRUE






# 排序

# order() is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for example:
# 10, which is the second element in a, is the smallest element, so 2 comes first in the output of order(a). 
# 100, which is the first element in a is the second smallest element, so 1 comes second in the output of order(a).

a <- c(100, 10, 1000)
order(a)
[1] 2 1 3

a[order(a)] # 索引
[1]   10  100 1000

# 根据某一列的排序，调整整个data frame
# Use order() to create positions
positions <-  order(planets_df$diameter)
positions
[1] 1 4 2 3 8 7 6 5

# Use positions to sort planets_df
planets_df[positions,]

    name               type   diameter  rotation rings
1 Mercury Terrestrial planet    0.382    58.64 FALSE
4    Mars Terrestrial planet    0.532     1.03 FALSE
2   Venus Terrestrial planet    0.949  -243.02 FALSE
3   Earth Terrestrial planet    1.000     1.00 FALSE
8 Neptune          Gas giant    3.883     0.67  TRUE
7  Uranus          Gas giant    4.007    -0.72  TRUE
6  Saturn          Gas giant    9.449     0.43  TRUE
5 Jupiter          Gas giant   11.209     0.41  TRUE
