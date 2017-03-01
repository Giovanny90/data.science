w <- read.table("data/column.2C.dat")
ch = lm(V6 ~ ., w[-116,])
w[116, 6] = predict(ch, w[116, -6])
a = glm(V7 ~ ., w, family="binomial")
b = step(a)
summary(b)

z <- (predict(b, w, type="response") > 0.5)
u <- rep("NO", 310)
u[!z] <- "AB"
(zz <- table(w[, 7], u))
(sum(zz) - sum(diag(zz))) / sum(zz)
