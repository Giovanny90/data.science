w <- read.table("data/grade.txt", header=TRUE)
par(mfrow=c(1, 2))
boxplot(grade ~ class, w, main="Original Grades")
boxplot(standardized ~ class, w, main="Standardized Grades")