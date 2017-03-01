w <- read.table('data/diet.txt', header=TRUE)
t.test(w$before, w$after, alt='greater', pair=TRUE)
