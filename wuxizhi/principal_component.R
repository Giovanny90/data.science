w <- read.table("data/who.txt", sep=",", header=T)
b <- eigen(cor(w))
data.frame(b$va, b$va/sum(b$va), cumsum(b$va)/sum(b$va))

par(mfrow=c(1,2))
plot(b$va, type='o', main="Scree Plot",
     xlab="Component Number", ylab="Eigen Value")
plot(cumsum(b$va)/sum(b$va), type="o",
     main="Cumulative Eigen Value (Ratio)",
     xlab="Component Number", ylab="Cumulative Eigen Value (Ratio)")
(loadings = sweep(b$ve, 2, sqrt(b$va), "*"))
plot(b$ve[,1:2],type="n",main="Loading Plot",
     xlab="Component 1", ylab="Component")
abline(h=0); abline(v=0)
text(b$ve[,1:2],names(w))

w1 <- as.matrix(scale(w))
plot(w1 %*% b$ve[,1:2], type="n", xlab="Comp 1", ylab="Comp 2")
text(w1 %*% b$ve[,1:2], row.names(w), cex=0.5)