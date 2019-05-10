########################
      # STAT 302 #
########################

# Seting working directory
# 1. Files -> More 
# 2. source("filepath")

# creating a vairable
x <- 1

# Extracting values 
x
x[1]
x[2] # this is NA

# Creating a vetor
y <- c(1,2,3) # c: concatenate
y

# Extracting 2nd component 
y[2]

# Creating a sequence
z <- 10:20
z
z <- seq(10,20, by=2)# 10-20, skipping every other value
z <- seq(from=10, to=20, by=2) # not needed, better for readability for others
z

a <- seq(0,1, length.out = 11)
a
length(a) # finding length of a vector
y <- rep(1, 10) # Another way to create a vector

# Vector operations
y.1 <- c(2,4)
y.2 <- 1
# Addition of vectors
y.1 + y.2
# Subtracting vectors
y.1 - y.2
# Multiplicating of vectors
y.1 * c(2,5)
y.1*2

rep(1,10) * c(2,4,5)# returns diff length vectors

# More extracting values
b <- 1:10
new <- b[c(2:5)]
new
new <- b[c(1, 6:10)
new
new <- b[-c(2:5)]
new




########################
      # Matrices #
########################

# Creating Matrices through vector operations
t(c(2,2)) %*% c(1,1) # Vector Multiplication
c(2,2) %*% t(c(1,1))

# Creating my own matrix
my.mat <- matrix(seq(1,9,by=1), nrow=3, ncol=3) # Adding by colu
my.mat <- matrix(seq(1,9,by=1), nrow=3, ncol=3, byrow= TRUE) # adding by row
my.mat

# Extracting values from matrices
my.mat[1,] # First row
my.mat[,1]
my.mat[1:2,] # first 2 rows

# Operations on matrices
2* my.mat
my.mat * c(1,1,1)
my.mat %*% c(1,2,3)


# ---------------------
# Lists
# ---------------------

# Creating a list in R
my.list <- list(x=1, my.s="Hello!", a.mat= my.mat)
my.list[2]
my.list$my.s


# ---------------------
# DataFrame
# ---------------------

my.data <- data.frame(my.mat)
colnames(my.data) <- c("Var1", "Var2", "Var3")
my.data



# ---------------------
# Function in R
# ---------------------


add.please <- function(x, y){
  return (x + y)
}

multiply.please  <- function(x, y){
  return (x * y)
}

add.please(1:5, 1)
add.please(1:5, 6:10) 
add.please(1:5, 1:2) # Alternates between adding 1 and adding 2

multiply.please(1:5, 1)
multiply.please(1:5, 6:10) 
multiply.please(1:5, 1:2) # Alternates between adding 1 and adding 2
multiply.please(my.mat, my.data)
multiply.please(my.mat, my.mat)

# replace a function