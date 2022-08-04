# Create matrix
matrix(1:9, byrow = TRUE, nrow = 3)

# In the matrix() function:
# The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
# The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
# The third argument nrow indicates that the matrix should have three rows.





# 创建三个vector -- combine -- assign to a matrix
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office(合并）
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix（命名）
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)




# 给行&列命名
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region 

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix





# 对每一行求和 【rowsums()】
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
                 "The Empire Strikes Back", 
                 "Return of the Jedi")
               
star_wars_matrix <- matrix(box_office, 
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))
OUTPUT:
                            US non-US
A New Hope              460.998  314.4
The Empire Strikes Back 290.475  247.9
Return of the Jedi      309.306  165.8


# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
OUPUT:
              A New Hope           The Empire Strikes Back   Return of the Jedi 
                775.398                 538.375                 475.106 






### 列合并到矩阵里面 加columns 【cbind()】
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

OUTPUT：
                             US non-US worldwide_vector
A New Hope              460.998  314.4          775.398
The Empire Strikes Back 290.475  247.9          538.375
Return of the Jedi      309.306  165.8          475.106






# 加rows 【rbind()】

>star_wars_matrix2
                        US non-US
The Phantom Menace   474.5  552.5
Attack of the Clones 310.7  338.7
Revenge of the Sith  380.3  468.5


all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

OUTPUT：                           
                          US   non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5


# 每列求和
total_revenue_vector <- colSums(all_wars_matrix)

OUTPUT：
US      non-US 
2226.3  2087.8 







# matrix 索引
my_matrix[1,2] # selects the element at the first row and second column.
my_matrix[1:3,2:4] # results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.

# If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:

my_matrix[,1] # selects all elements of the first column.
my_matrix[1,] # selects all elements of the first row.

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]

OUPUT:
                A New Hope      The Empire Strikes Back 
                  314.4                   247.9 





## Factor 

# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)

OUTPUT:
[1] Male   Female Female Male   Male  
Levels: Female Male

# Animals Nominal 
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector
OUTPUT:
[1] Elephant Giraffe  Donkey   Horse   
Levels: Donkey Elephant Giraffe Horse

# Temperature Ordinal 
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
OUTPUT:
[1] High   Low    High   Low    Medium
Levels: Low < Medium < High





# 改变levels的名字 缩写变全名 levels() <- c("", "", "")
# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector
OUTPUT:
[1] Male   Female Female Male   Male  
Levels: Female Male

# Summary
# Generate summary for survey_vector
summary(survey_vector)

OUTPUT:
Length     Class      Mode 
        5 character character 

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

OUTPUT:
Female   Male 
     2      3 











































































