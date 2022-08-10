# Stratified sample
# In stratified sampling, we first divide the population into homogeneous groups, called strata, and then we randomly sample from within each stratum.  


# Cluster sample
# In cluster sampling, we divide the population into clusters, randomly sample a few clusters, and then sample all observations within these clusters.  
# The clusters, unlike strata in stratified sampling, are heterogeneous within themselves and each cluster is similar to the others, 
# such that we can get away with sampling from just a few of the clusters.

# Multistage sample
# Multistage sampling adds another step to cluster sampling. 
# Just like in cluster sampling, we divide the population into clusters, randomly sample a few clusters, 
# and then we randomly sample observations from within those clusters. 
# Cluster and multistage sampling are often used for economical reasons.


# Random Sampling
> us_regions
                  state    region
1           Connecticut Northeast
2                 Maine Northeast
3         Massachusetts Northeast
4         New Hampshire Northeast
5          Rhode Island Northeast
6               Vermont Northeast
7            New Jersey Northeast
8              New York Northeast
9          Pennsylvania Northeast
10             Illinois   Midwest
11              Indiana   Midwest
12             Michigan   Midwest
13                 Ohio   Midwest
14            Wisconsin   Midwest
15                 Iowa   Midwest
16               Kansas   Midwest
17            Minnesota   Midwest
18             Missouri   Midwest
19             Nebraska   Midwest
20         North Dakota   Midwest
21         South Dakota   Midwest
22             Delaware     South
23              Florida     South
24              Georgia     South
25             Maryland     South
...

# The dplyr package and us_regions data frame have been loaded.

# Use simple random sampling to select eight states from us_regions. Save this sample in a data frame called states_srs.
states_srs <- us_regions %>%
  sample_n(size = 8)

OUTPUT:
        state       region
1     Washington      West
2       Oklahoma     South
3       Nebraska   Midwest
4 South Carolina     South
5    Connecticut Northeast
6        Montana      West
7       Missouri   Midwest
8           Utah      West

# Count the number of states from each region in your sample.
states_srs %>%
  count(region)

OUTPUT:
# A tibble: 4 x 2
  region        n
  <fct>     <int>
1 Midwest       2
2 Northeast     1
3 South         2
4 West          3







#   Stratified Sample 
#   Our goal for this exercise is to sample an equal number of states from each region. 在每个region里面选择相同个数的states

# Stratified sample
states_str <- us_regions %>%
  group_by(region) %>%          # 以region分类
  sample_n(size = 2)            # 在每个region里面选两个

# A tibble: 8 x 2
# Groups:   region [4]
  state          region   
  <fct>          <fct>    
1 Illinois       Midwest  
2 Michigan       Midwest  
3 Maine          Northeast
4 Vermont        Northeast
5 Louisiana      South    
6 North Carolina South    
7 California     West     
8 Montana        West     

# Count states by region
states_str %>%
  count(region)                 # 验证每个region有几个states
 
# A tibble: 4 x 2
# Groups:   region [4]
  region        n
  <fct>     <int>
1 Midwest       2
2 Northeast     2
3 South         2
4 West          2



# Explanatory variables are conditions you can impose on the experimental units, 
# while blocking variables are characteristics that the experimental units come with that you would like to control for.


# To control means to compare the treatment of interest to a control group.  
# To randomize means to randomly assign subjects to treatments.  
# To replicate means to collect a sufficiently large sample within a study or to replicate the entire study. 
# And the last principle of experimental design is blocking.  
# The goal of blocking is to account for the potential effect of known or suspected confounding variables.  
# We do this by first grouping subjects into blocks based on these variables and then randomizing them within each block to treatment groups.  


