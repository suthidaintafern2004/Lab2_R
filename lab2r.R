# DAta Structure
  #vector
  #list
  #matrix
  #datafrem

#vector
a <- c(1,2,3,4,5) # conatenate การเชื่อมต่อถึงกั
a
vec1 <- 1:10  #seqeuence
vec2 <- rnorm(100) #rnorm (normal distribution)
vec2

rep(c(1,2,3),10)  #replicate element ทำซ้ำ
?rep
help(rep)
help(rnorm)
?seq
seq(0,100,10)

print(vec1)
print(seq(0,100,10))

vec3 <- 3.8:11.4
print(vec3)

s <- c('apple','red', TRUE)
print(s)

#logical vector
l <- c(TRUE, FALSE, TRUE)
print(l)

ll <- c(T,F,T)
print(ll)

# Access vector element position
t <- c("Sun","Mon","Tue","wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

x <- t[c(-2,-5)]
print(x)

y <- t[c(0,0,0,0,0,0,1)]
print(y)

# sum vector
v1 <- c(3,5,7,9,11)
v2 <- c(2,4,6,8,10)

add.result <- v1+v2
print(add.result)

# vector subtracion
sub.result <- v1-v2
print(sub.result)

# vector mltiplication
mul.result <- v1*v2
print(mul.result)

#vector division
div.result <- v1/v2
print(div.result)

# sort element vector
v3 <- c(3,8,4,7,9,2,6,1)
sort.result <- sort(v3) # increment
print(sort.result)

sortd.result <- sort(v3,decreasing = TRUE)  #decreasing
print(sortd.result)


vec4 <- c(1,2,3, "one","two","theree", TRUE, FALSE)
print(vec4)


#list containing String, number, vector, logical
names <- c("Ronaldo","Messi","Rooney")
age <- c("37", "34", "40")
retired <- c(FALSE, FALSE, TRUE)


my.list <- list(names, age, retired)
print(my.list)

my.list2 <- list(player.name = names,
                 player.age = age,
                 player.club = clubs,
                 retired = retired)
print(my.list2)

list.data <- list("Red", "Green", c(20,30,40), TRUE, 5,15,25)
print(list.data)

print(list.data[2])
print(list.data[3])
print(list.data[4])
print(list.data[5])

list.data[5] <- 50  #update element
print(list.data[5])

# Merge list
list1 <- list(1,2,3)
list2 <- list("One","two",'theree')

merge.list <- c(list1, list2)
print(merge.list)

list3 <- list(2,4,6)
list4 <- list(8,10,12)

#convert list to vector
v3 <- unlist(list3)
v4 <- unlist(list4)

print(v3+v4)

#Matrix(data,nrow,ncol,byrow,dimnames)
?matrix
matrix(1:3, nrow=1)
matrix(1:9, nrow=3)
matrix(1:9, nrow=3, byrow = TRUE)

matrix(5, nrow=1) #1*1 dim
matrix(1:4, nrow=2) #2*2 dim
matrix(1:4, nrow=2, byrow=TRUE) #2* 2dim

matrix(1:9, nrow=3, ncol=3) #3*3 dim
matrix(1:9, nrow=3, byrow=TRUE) #3*3 dim

matrix(1:6, nrow=3)  #3*2 dim


my.mat <- matrix(1:9, nrow=3, byrow = TRUE)

colnames(my.mat) <- c("A","b","C")
rownames(my.mat) <- c("row1","row2","row3")

my.mat

cbind(my.mat, my.mat)   #column combine
rbind(my.mat, my.mat)   #row combine

my.mat2 <- my.mat*10
my.mat2

#Access matrix position
print(my.mat2[1,1])
print(my.mat2[2,2])
print(my.mat2[3,3])

# access only 2ad row
print(my.mat2[2,])

#access only 3rd col
print(my.mat2[,3])

#crate 2x3 matrices
mat1 <- matrix(c(3,9,-1,4,2,6), nrow = 2)
mat2 <- matrix(c(5,2,0,9,3,4), nrow = 2)

print(mat1)
print(mat2)

#add matrixces
mat.result <- mat1+mat2
cat("Result of assiton","\n")
print(mat.result)

# sub matrices
mat.result <- mat1-mat2
cat("Result of subtraction","\n")
print(mat.result)

# mul matrices
mat.result <- mat1*mat2
cat("Result of Multiplicatin","\n")
print(mat.result)

# div matrices
mat.result <- mat1/mat2
cat("Result of Division","\n")
print(mat.result)

#Dataframe
?data.frame

#create data frame
cities <- c("BKK","Tokyo","London")
counties <- c("TH","JPN","UK")
population <- c(1000000,2000000,5000000)

m.df <- data.frame(cities,counties,population)
print(m.df)

emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Rick","Dan","Mic","Ryan","Gray"),
  salary = c(500,600,700,800,900),
  start_date = as.Date(c("2012-02-15","2014-04-13","2015-10-03","2017-05-15","2021-07-05")))
print(emp.data)
str(emp.data)   # get structure data frame

# extract column
result.emp <- data.frame(emp.data$emp_name,emp.data$salaty)
print(result.emp)

# extract two rows
result.emp2 <- emp.data[1:2,]
print(result.emp2)

# extract select row or column
resolt.emp3 <- emp.data[c(3,5),c(2,4)]
print(resolt.emp3)

# add column in data frame
emp.data$dept <- c("IT","operator","Hr","Sale","sEcurity")
print(emp.data)

emp.data2 <- data.frame(
  emp_id = c(6:8),
  emp_name = c("Jo","B","A"),
  salary = c(1500,2600,3700),
  start_date = as.Date(c("2012-02-15","2014-04-13","2015-10-03"),
  ))
emp.data2$dept <- c("IT","Operator","Hr")

emp.newdata <- rbind(emp.data,emp.data2)
print(emp.newdata)

# built in data frame
data()

data(mtcars)
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)

summary(mtcars)








