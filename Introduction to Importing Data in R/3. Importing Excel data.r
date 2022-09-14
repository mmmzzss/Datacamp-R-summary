excel_sheets() --> list different sheets
read_excel()   --> actually import data into R

# Load the readxl package
library(readxl)

# Print the names of all worksheets
excel_sheets("urbanpop.xlsx")

[1] "1960-1966" "1967-1974" "1975-2011"


# Read all Excel sheets with lapply(): pop_list
pop_list <- lapply(excel_sheets("urbanpop.xlsx"), read_excel, path = "urbanpop.xlsx")

# Display the structure of pop_list
str(pop_list)




read_excel() 里包含:
read_excel(path, 
           sheet =1,           
           col_names =TRUE,           
           col_types =NULL,           
           skip =0)


cols <- c("country", paste0("year_", 1960:1966)) --> year_1960, year_1961, year_1962....
pop_b <- read_excel("urbanpop_nonames.xlsx", sheet = 1, col_names = cols,col_types = NULL,skip = 0)

result:
# A tibble: 209 × 8
   country year_1960 year_1961 year_1962 year_1963 year_1964 year_1965 year_1966
   <chr>       <dbl>     <dbl>     <dbl>     <dbl>     <dbl>     <dbl>     <dbl>
 1 Afghan…    769308   814923.   858522.   903914.   951226.  1000582.  1058743.
 2 Albania    494443   511803.   529439.   547377.   565572.   583983.   602512.
 3 Algeria   3293999  3515148.  3739963.  3973289.  4220987.  4488176.  4649105.
 4 Americ…        NA    13660.    14166.    14759.    15396.    16045.    16693.
 5 Andorra        NA     8724.     9700.    10748.    11866.    13053.    14217.
 6 Angola     521205   548265.   579695.   612087.   645262.   679109.   717833.
......

By default it is TRUE, denoting whether the first row in the Excel sheets contains the column names. 
If this is not the case, you can set col_names to FALSE. In this case, R will choose column names for you
col_names默认是true。如果列没有名字，设置成False，R自动添加名字。




SKip argument:
pop_b <- read_excel("urbanpop_nonames.xlsx", sheet = 1, col_names = cols,col_types = NULL,skip = 21)





Gdata package
file.xls --> CSV --> R data frame (by read_csv/table())

install.packages("gdata")
library(gdata)

read.xls("cities.xls")

read.xls("cities.xls", sheet ="year_2000")

# Import the second sheet of urbanpop.xls: urban_pop
urban_pop <- read.xls("urbanpop.xls",sheet = "1967-1974")

# Print the first 11 observations using head()
head(urban_pop, n = 11)

result:
 country       X1967       X1968       X1969       X1970
1          Afghanistan  1119067.20  1182159.06  1248900.79  1319848.78
2              Albania   621179.85   639964.46   658853.12   677839.12
3              Algeria  4826104.22  5017298.60  5219331.87  5429743.08
4       American Samoa    17348.66    17995.51    18618.68    19206.39
5              Andorra    15439.62    16726.99    18088.32    19528.96
...






# Column names for urban_pop
columns <- c("country", paste0("year_", 1967:1974))

# Finish the read.xls call
urban_pop <- read.xls("urbanpop.xls", sheet = 2,
                      skip = 50, header = FALSE , stringsAsFactors = FALSE,
                      col.names = columns)

# Print first 10 observation of urban_pop
head(urban_pop, n = 10)






# Add code to import data from all three sheets in urbanpop.xls
path <- "urbanpop.xls"
urban_sheet1 <- read.xls(path, sheet = 1, stringsAsFactors = FALSE)
urban_sheet2 <- read.xls(path, sheet = 2, stringsAsFactors = FALSE)
urban_sheet3 <- read.xls(path, sheet = 3, stringsAsFactors = FALSE)


# Extend the cbind() call to include urban_sheet3: urban 合并并且去掉第一列
urban <- cbind(urban_sheet1, urban_sheet2[-1], urban_sheet3[-1])


# Remove all rows with NAs from urban: urban_clean 清除所有的NAs
urban_clean <- na.omit(urban)


# Print out a summary of urban_clean
summary(urban_clean)




