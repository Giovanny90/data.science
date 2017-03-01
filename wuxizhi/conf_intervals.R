binom.test(934, 1341, con=.95)

library(Hmisc)
binconf(934, 1341, alpha=.05, method="all")

prop.test(c(423, 215), c(950, 1102), con=.95)$con
