# an experiment requires random assignment. Observational & Experimental 


# Random sampling: randomly select a group of people from population. The conclusion could be generalized. 

# Random assignment: Occur only in experimental settings where subjects are being assigned to various treatment. 
# 可以用casual conclusions

# There is no random sampling since the subjects of the study were volunteers, so the results cannot be generalized to all people. 
# However, due to random assignment, we are able to infer a causal link between the belief information is stored and the ability to recall that same information.

ucb_admit %>%
  count(Gender,Admit) 
  
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


