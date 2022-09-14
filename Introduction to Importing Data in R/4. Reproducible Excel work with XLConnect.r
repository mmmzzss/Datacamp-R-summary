# List and read Excel sheets
To list the sheets in an Excel file, use getSheets(). 列出每个sheet的名字
To actually import data from a sheet, you can use readWorksheet() 实际import data


得到每个sheet的名字
getSheets(book) ==== library(readxl)
                      excel_sheets("cities.xlsx")

readWorksheet(book, sheet ="year_2000") == read.xls()/ read.excel()

readWorksheet(book, sheet ="year_2000", startRow =3, endRow =4, startCol =2, header =FALSE)               
                                                                     
                                                                  
                                                           


# urbanpop.xlsx is available in your working directory

# Load the XLConnect package
install.packages("XLConnect")
library(XLConnect)

# Build connection to urbanpop.xlsx: my_book
my_book <- loadWorkbook("urbanpop.xlsx")

# Print out the class of my_book
class(my_book)


Createsheet() 创建一个新sheet
pop_2010 <- ... # truncated
library(XLConnect)
book <- loadWorkbook("cities.xlsx") 创建联系
createSheet(book, name ="year_2010") 在book里面创建一个新的sheet

writeWorksheet(book, pop_2010, sheet ="year_2010")    
saveWorkbook(book, file ="cities2.xlsx")



renameSheet(book,"year_2010","Y2010")
saveWorkbook(book, file ="cities3.xlsx")

removeSheet(book, sheet ="Y2010")




# Build connection to urbanpop.xlsx     xlsx变成csv
my_book <- loadWorkbook("urbanpop.xlsx")

# Add a worksheet to my_book, named "data_summary"    添加worksheet，并给新名字
createSheet(my_book, "data_summary")

# Create data frame: summ               创建数据集
sheets <- getSheets(my_book)[1:3]
dims <- sapply(sheets, function(x) dim(readWorksheet(my_book, sheet = x)), USE.NAMES = FALSE)
summ <- data.frame(sheets = sheets,
                   nrows = dims[1, ],
                   ncols = dims[2, ])

# Add data in summ to "data_summary" sheet    把数据集summ加到sheet data_summary里面
pop_summ <- library(XLConnect)
writeWorksheet(my_book, summ, sheet = "data_summary")

# Save workbook as summary.xlsx               保存数据集
saveWorkbook(my_book, file = "summary.xlsx")


               
               
# Build connection to urbanpop.xlsx: my_book
my_book <- loadWorkbook("urbanpop.xlsx")

# Rename "data_summary" sheet to "summary"  文件名--sheet名字--sheet新名字
renameSheet(my_book,"data_summary", "summary")

# Print out sheets of my_book
getSheets(my_book)

# Save workbook to "renamed.xlsx"
saveWorkbook(my_book, file = "renamed.xlsx")
               
               

               
# Load the XLConnect package
library(XLConnect)

# Build connection to renamed.xlsx: my_book
my_book <- loadWorkbook("renamed.xlsx")

# Remove the fourth sheet
removeSheet(my_book, sheet = getSheets(my_book)[4])

# Save workbook to "clean.xlsx"
saveWorkbook(my_book, file = "clean.xlsx")
               
               
               

