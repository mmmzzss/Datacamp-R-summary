# Import csv file 
pools <- read.csv('swimming_pools.csv')


                                        Name
1                Acacia Ridge Leisure Centre
2                            Bellbowrie Pool
3                                Carole Park
4                Centenary Pool (inner City)
5                             Chermside Pool
6                Colmslie Pool (Morningside)
7             Spring Hill Baths (inner City)
8                 Dunlop Park Pool (Corinda)
9                      Fortitude Valley Pool
10 Hibiscus Sports Complex (upper MtGravatt)
11                 Ithaca Pool ( Paddington)
12                             Jindalee Pool
13                                Manly Pool
14            Mt Gravatt East Aquatic Centre
15       Musgrave Park Pool (South Brisbane)
16                            Newmarket Pool
17                              Runcorn Pool
18                             Sandgate Pool
19      Langlands Parks Pool (Stones Corner)
20                         Yeronga Park Pool
                                       Address  Latitude Longitude
1           1391 Beaudesert Road, Acacia Ridge -27.58616  153.0264
2                 Sugarwood Street, Bellbowrie -27.56547  152.8911
3   Cnr Boundary Road and Waterford Road Wacol -27.60744  152.9315
4             400 Gregory Terrace, Spring Hill -27.45537  153.0251
5                 375 Hamilton Road, Chermside -27.38583  153.0351
6                 400 Lytton Road, Morningside -27.45516  153.0789
7             14 Torrington Street, Springhill -27.45960  153.0215
8                      794 Oxley Road, Corinda -27.54652  152.9806
9         432 Wickham Street, Fortitude Valley -27.45390  153.0368
10         90 Klumpp Road, Upper Mount Gravatt -27.55183  153.0735
11               131 Caxton Street, Paddington -27.46226  153.0103
12                 11 Yallambee Road, Jindalee -27.53236  152.9427
13                  1 Fairlead Crescent, Manly -27.45228  153.1874
14 Cnr wecker Road and Newnham Road, Mansfield -27.53214  153.0943
15       100 Edmonstone Street, South Brisbane -27.47978  153.0168
16                71 Alderson Stret, Newmarket -27.42968  153.0062
17                   37 Bonemill Road, Runcorn -27.59156  153.0764
18               231 Flinders Parade, Sandgate -27.31196  153.0691
19             5 Panitya Street, Stones Corner -27.49769  153.0487
20                     81 School Road, Yeronga -27.52053  153.0185

With stringsAsFactors, you can tell R whether it should convert strings in the flat file to factors.

For all importing functions in the utils package, this argument is TRUE, which means that you import strings as factors. 
This only makes sense if the strings you import represent categorical variables in R. 
If you set stringsAsFactors to FALSE, the data frame columns corresponding to strings in your text file will be character.

pools <- read.csv('swimming_pools.csv',stringsAsFactors = FALSE)
str(pools)
  
 # data.frame':	20 obs. of  4 variables:
 # $ Name     : chr  "Acacia Ridge Leisure Centre" "Bellbowrie Pool" "Carole Park" "Centenary Pool (inner City)" ...
 # $ Address  : chr  "1391 Beaudesert Road, Acacia Ridge" "Sugarwood Street, Bellbowrie" "Cnr Boundary Road and Waterford Road Wacol" "400 Gregory Terrace, Spring Hill" ...
 # $ Latitude : num  -27.6 -27.6 -27.6 -27.5 -27.4 ...
 # $ Longitude: num  153 153 153 153 153 ...






# Import txt file
# Import hotdogs.txt: hotdogs
# By default, head = TRUE, sep = '\t'
hotdogs <- read.delim("hotdogs.txt",
                        header = FALSE,
                        sep = "\t",
                        stringsAsFactors = FALSE)

# Summarize hotdogs
summary(hotdogs)

Result:
      V1                  V2              V3       
 Length:54          Min.   : 86.0   Min.   :144.0  
 Class :character   1st Qu.:132.0   1st Qu.:362.5  
 Mode  :character   Median :145.0   Median :405.0  
                    Mean   :145.4   Mean   :424.8  
                    3rd Qu.:172.8   3rd Qu.:503.5  
                    Max.   :195.0   Max.   :645.0 








# Import table
# the file is in the data folder inside your current working directory
By default, head = TRUE

path <- file.path("data", "hotdogs.txt")


# Import the hotdogs.txt file: hotdogs
hotdogs <- read.table(path, 
                      sep = "\t", 
                      col.names = c("type", "calories", "sodium"))

# Call head() on hotdogs
head(hotdogs)


result:
type calories sodium
1 Beef      186    495
2 Beef      181    477
3 Beef      176    425
4 Beef      149    322
5 Beef      184    482
6 Beef      190    587


# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]

 type calories sodium
50 Poultry       86    358


# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor","NULL","numeric"))

BEFORE:
'data.frame':	54 obs. of  3 variables:
 $ type    : chr  "Beef" "Beef" "Beef" "Beef" ...
 $ calories: int  186 181 176 149 184 190 158 139 175 148 ...
 $ sodium  : int  495 477 425 322 482 587 370 322 479 375 ...


AFTER:
'data.frame':	54 obs. of  2 variables:
 $ type  : Factor w/ 3 levels "Beef","Meat",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ sodium: num  495 477 425 322 482 587 370 322 479 375 ...



