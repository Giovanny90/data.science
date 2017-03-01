weight <- scan("data/noodle.TXT")
summary(weight)
t.test(weight, con=.95)$con
