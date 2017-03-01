library(MASS)
a = lda(Species ~ ., iris)
z = as.matrix(iris[, 1:4]) %*% a$scal
plot(z[,1], z[,2], pch=c(rep(19, 50), rep(5, 50), rep(17, 50)),
     xlab="first linear discriminant",
     ylab="second linear discriminant")
legend("top", pch=c(19, 5, 17), c("setosa", "versicolor", "virginica"))

# verification
set.seed(1010)
samp = c(sample(1:50, 25), sample(51:100, 25), sample(101:150), 25)
a = lda(Species ~ ., data=iris, subset=samp)
pred = predict(a, iris[-samp,])$class
table(iris[-samp, 5], pred)
