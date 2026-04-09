x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(3,3,3,6,6,9,9,9,10,10)

plot(x,y)
reg1 <- lm(y ~ x, data = df1)
abline(reg1, col ="red", lwd=2)

df1 <- data.frame(x,y)
df1$y_hat <- reg1$fitted.values

df1$잔차 <- reg1$residuals

predict(reg1, data.frame(x = 11))
