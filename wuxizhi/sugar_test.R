weight <- scan('data/sugar.txt')
t.test(weight, m=500, alternative='less')

# A right-tail test example
x <- scan('data/exh.txt')
t.test(x, m=20, alternative='greater')
