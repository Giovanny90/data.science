w <- read.table("data/Dermatology1.txt", header=T)
w[, 35] = factor(w[, 35])

library(rpart.plot)
(a = rpart(V35 ~ ., w))
rpart.plot(a, type=1, extra=1)
table(w[,35], predict(a, w, type='class'))


# Agaricus Lepiota
w <- read.table("data/agaricus-lepiota1.txt", header=T)
library(rpart.plot)
(a <- rpart(V1 ~ ., w))
rpart.plot(a, type=1, extra=1)
(z0 <- table(w[,1], predict(a, w, type="class")))
(E0 <- (sum(z0) - sum(diag(z0))) / sum(z0))


# regression tree
w <- read.table("data/housing.txt", header=T)
library(rpart.plot)
(a <- rpart(MEDV ~ ., w))
rpart.plot(a, type=1, faclen=T)

y0 <- predict(a, w)
(NMSE0 <- mean((w$MEDV - y0) ^ 2) / mean((w$MEDV - mean(w$MEDV)) ^ 2))
