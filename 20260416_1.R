x1 <- 1:6
x2 <- c(3,2,3,1,5,7)

y <- c(4,4,5,5,11,12)

df1 <- data.frame(x1, x2, y)

X <- as.matrix(cbind(1, df1[,1:2]))
Y <- df1$y


w_hat <- solve(t(X) %*% X) %*% t(X) %*% Y

X_new = rbind(c(1, 7, 8), 
               c(1,9,2))

reg1 <- lm(y ~ ., data = df1)

predict(reg1, data.frame(x1=c(7,9), x2=c(8,2)))

reg1$coefficients
