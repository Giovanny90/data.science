w <- read.table("data/artif2.txt", header=T)
a <- lm(y ~ x * u, w)
summary(a)
plot(y ~ x, w)
abline(a$coe[1], a$coe[2])
abline(a$coe[1] + a$coe[3], a$coe[2] + a$coe[4])

# create a new data frame
new <- data.frame(u=c("A", "B", "B"), x=c(47, 6, 45))
predict(a, new)
