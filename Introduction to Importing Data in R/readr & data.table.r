# read.csv --> read_csv;      read.table --> read_delim;    read.delim --> read_tsv



read_tsv

# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import potatoes.txt: potatoes
potatoes <- read_tsv("potatoes.txt", col_names = properties)

# Call head() on potatoes
head(potatoes)


RESULT:
# A tibble: 6 × 8
   area  temp  size storage method texture flavor moistness
  <dbl> <dbl> <dbl>   <dbl>  <dbl>   <dbl>  <dbl>     <dbl>
1     1     1     1       1      1     2.9    3.2       3  
2     1     1     1       1      2     2.3    2.5       2.6
3     1     1     1       1      3     2.5    2.8       2.8
4     1     1     1       1      4     2.1    2.9       2.4
5     1     1     1       1      5     1.9    2.8       2.2
6     1     1     1       2      1     1.8    3         1.7



skip specifies the number of lines you're ignoring in the flat file before actually starting to import data.
n_max specifies the number of lines you're actually importing.
Say for example you have a CSV file with 20 lines, and set skip = 2 and n_max = 3, you are only reading line345 of this file.  





# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import all data, but force all columns to be character: potatoes_char
potatoes_char <- read_tsv("potatoes.txt", col_types = "cccccccc", col_names = properties)

# Print out structure of potatoes_char
str(potatoes_char)







# Another way of setting the types of the imported columns is using collectors. 
Collector functions can be passed in a list() to the col_types argument of read_ functions to tell them how to interpret values in a column.

# Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))

# Display the summary of hotdogs
summary(hotdogs)

 type              calories         sodium     
 Length:54          Min.   : 86.0   Min.   :144.0  
 Class :character   1st Qu.:132.0   1st Qu.:362.5  
 Mode  :character   Median :145.0   Median :405.0  
                    Mean   :145.4   Mean   :424.8  
                    3rd Qu.:172.8   3rd Qu.:503.5  
                    Max.   :195.0   Max.   :645.0  

# The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()

# Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt",
                           col_names = c("type", "calories", "sodium"),
                           col_types = list(fac,int,int)) # 不设置的话就自己识别相应的type

# Display the summary of hotdogs_factor
summary(hotdogs_factor)
  type       calories         sodium     
 Beef   :20   Min.   : 86.0   Min.   :144.0  
 Meat   :17   1st Qu.:132.0   1st Qu.:362.5  
 Poultry:17   Median :145.0   Median :405.0  
              Mean   :145.4   Mean   :424.8  
              3rd Qu.:172.8   3rd Qu.:503.5  
              Max.   :195.0   Max.   :645.0  














fread() ======= read.table()

library(data.table)

# Import potatoes.csv with fread(): potatoes
potatoes <- fread("potatoes.csv")

# Print out potatoes
print(potatoes)

area temp size storage method texture flavor moistness
  1:    1    1    1       1      1     2.9    3.2       3.0
  2:    1    1    1       1      2     2.3    2.5       2.6
  3:    1    1    1       1      3     2.5    2.8       2.8
  4:    1    1    1       1      4     2.1    2.9       2.4
  5:    1    1    1       1      5     1.9    2.8       2.2
 ---        


DROP n SELECT
fread("path/to/file.txt", drop = 2:4)
fread("path/to/file.txt", select = c(1, 5))
fread("path/to/file.txt", drop = c("b", "c", "d"))
fread("path/to/file.txt", select = c("a", "e"))


The class of the result of fread() is both data.table and data.frame. 
read_csv() creates an object with three classes: tbl_df, tbl and data.frame.
