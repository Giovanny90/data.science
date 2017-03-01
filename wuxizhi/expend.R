w <- read.table("data/expend.txt", header=TRUE)
x <- w[w[, 2] == 1, 1]
y <- w[w[, 2] == 2, 1]
mean(x); sd(x)
mean(y); sd(y)

mean(x) - mean(y)
t.test(x, y)$conf
t.test(x, y, var=TRUE)$conf

var.test(x, y)$p.value
