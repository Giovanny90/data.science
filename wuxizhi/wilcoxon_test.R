w <- read.table('data/gdp.txt')
wilcox.test(w[w[,2] == 1, 1], w[w[,2] == 2, 1], alt='less')
