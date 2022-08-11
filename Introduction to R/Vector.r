# Create Vector
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)





# Assign days as names of poker_vector 给向量里面的每个数据找对应
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)


# Or more readable way:
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
 
# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector





# Take the sum of A_vector and B_vector 向量相加
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)
total_vector <- A_vector + B_vector

# 向量内求和/average
total_poker <- sum(poker_vector)
mean(poker_start)





# Index
poker_wednesday <- poker_vector[3]
poker_midweek <- poker_vector[c(2,3,4)]
roulette_selection_vector <- roulette_vector[2:5]






# 比较 Comparison
# Which days did you make money on poker?
selection_vector <- poker_vector > 0
  
# Print out selection_vector
selection_vector

OUTPUT: 
selection_vector
   Monday   Tuesday Wednesday  Thursday    Friday 
     TRUE     FALSE      TRUE     FALSE      TRUE 





# 找出向量中正数
selection_vector <- poker_vector > 0
OUTPUT:
Monday   Tuesday Wednesday  Thursday    Friday 
     TRUE     FALSE      TRUE     FALSE      TRUE 

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
OUTPUT:
>poker_winning_days
   Monday Wednesday    Friday 
      140        20       240 




# 移除vector中的元素
#define vector
x <- c('Mavs', 'Nets', 'Hawks', 'Bucks', 'Spurs', 'Suns')

#remove 'Mavs' and 'Spurs' from vector
x <- x[! x %in% c('Mavs', 'Spurs')]

#view updated vector
x

[1] "Nets"  "Hawks" "Bucks" "Suns" 
