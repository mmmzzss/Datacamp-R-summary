# Create matrix
matrix(1:9, byrow = TRUE, nrow = 3)

# In the matrix() function:

# The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
# The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
# The third argument nrow indicates that the matrix should have three rows.


# 创建三个vector -- combine -- assign to a matrix
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office(合并）
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix（命名）
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
