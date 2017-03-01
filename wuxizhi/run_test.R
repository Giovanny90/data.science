library(tseries)
x <- scan('data/run1.txt')
runs.test(factor(x))

y <- scan('data/run2.txt')
runs.test(factor(y > median(y)))
