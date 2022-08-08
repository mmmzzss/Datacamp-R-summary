# an experiment requires random assignment. Observational & Experimental 


# Random sampling: randomly select a group of people from population. The conclusion could be generalized. 

# Random assignment: Occur only in experimental settings where subjects are being assigned to various treatment. 
# 可以用casual conclusions

# There is no random sampling since the subjects of the study were volunteers, so the results cannot be generalized to all people. 
# However, due to random assignment, we are able to infer a causal link between the belief information is stored and the ability to recall that same information.

ucb_admit %>%
  count(Gender,Admit)           # 表格里先按照gender分类，再按照ad/rej分，分别数四个类别
  
        Admit Gender Dept
1    Admitted   Male    A
2    Admitted   Male    A
3    Admitted   Male    A
4    Admitted   Male    A
5    Admitted   Male    A
6    Admitted   Male    A
7    Admitted   Male    A
8    Admitted   Male    A
9    Admitted   Male    A
10   Admitted   Male    A
11   Admitted   Male    A
12   Admitted   Male    A
13   Admitted   Male    A
14   Admitted   Male    A
...

OUTPUT:
# A tibble: 4 x 3
  Gender Admit        n
  <fct>  <fct>    <int>
1 Male   Admitted  1198
2 Male   Rejected  1493
3 Female Admitted   557
4 Female Rejected  1278




# 计算每个group里每个类别的比例

ucb_admission_counts %>%
  # Group by gender
  group_by(Gender) %>%        
  # Create new variable
  mutate(prop = n / sum(n)) %>%       # 重新定义prop = n / sum(n)
  # Filter for admitted
  filter(Admit == "Admitted")

# A tibble: 4 x 3
  Gender Admit        n
  <fct>  <fct>    <int>
1 Male   Admitted  1198
2 Male   Rejected  1493
3 Female Admitted   557
4 Female Rejected  1278

# A tibble: 2 x 4
# Groups:   Gender [2]
  Gender Admit        n  prop
  <fct>  <fct>    <int> <dbl>
1 Male   Admitted  1198 0.445
2 Female Admitted   557 0.304

# 在一个部门之内看，男比女更admitted


New Table: Ucb_admission_counts
# A tibble: 24 x 4
   Dept  Gender Admit        n
   <chr> <fct>  <fct>    <int>
 1 A     Male   Admitted   512
 2 A     Male   Rejected   313
 3 A     Female Admitted    89
 4 A     Female Rejected    19
 5 B     Male   Admitted   353
 6 B     Male   Rejected   207
 7 B     Female Admitted    17
 8 B     Female Rejected     8
 9 C     Male   Admitted   120
10 C     Male   Rejected   205
# ... with 14 more rows



ucb_admission_counts  %>%
  # Group by department, then gender
  group_by(Dept, Gender) %>%
  # Create new variable
  mutate(prop = n / sum(n)) %>%
  # Filter for male and admitted
  filter(Gender == "Male", Admit == "Admitted")

# A tibble: 6 x 5
# Groups:   Dept, Gender [6]
  Dept  Gender Admit        n   prop
  <chr> <fct>  <fct>    <int>  <dbl>
1 A     Male   Admitted   512 0.621 
2 B     Male   Admitted   353 0.630 
3 C     Male   Admitted   120 0.369 
4 D     Male   Admitted   138 0.331 
5 E     Male   Admitted    53 0.277 
6 F     Male   Admitted    22 0.0590

# A tibble: 12 x 5
# Groups:   Dept, Gender [12]
   Dept  Gender Admit        n   prop
   <chr> <fct>  <fct>    <int>  <dbl>
 1 A     Male   Admitted   512 0.621 
 2 A     Female Admitted    89 0.824 
 3 B     Male   Admitted   353 0.630 
 4 B     Female Admitted    17 0.68  
 5 C     Male   Admitted   120 0.369 
 6 C     Female Admitted   202 0.341 
 7 D     Male   Admitted   138 0.331 
 8 D     Female Admitted   131 0.349 
 9 E     Male   Admitted    53 0.277 
10 E     Female Admitted    94 0.239 
11 F     Male   Admitted    22 0.0590
12 F     Female Admitted    24 0.0704

# 部门之间看的话，女性more likely to be admitted
# 控制department看的话，结果反转 --> Simpson's paradox
# 可能原因：女性去low admission rate department；男性：less competitive department with high admission rate.



