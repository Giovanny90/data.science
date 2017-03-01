w <- read.table('data/drug.txt', header=TRUE)
x <- w[w[, 2] == 1, 1]
y <- w[w[, 2] == 2, 1]
t.test(x, y, alt='greater')
