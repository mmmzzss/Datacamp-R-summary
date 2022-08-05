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

