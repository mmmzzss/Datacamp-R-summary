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
