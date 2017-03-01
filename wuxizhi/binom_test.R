x <- scan('data/life.txt')
binom.test(sum(x < 2), 60, .7, alter='greater')
