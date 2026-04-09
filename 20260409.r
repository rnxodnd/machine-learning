x <- 10*c(138,312,352,113,103,172,392,
          149,186,343,200,366,250,122,139)
y <- c(76,216,238,69,50,119,282,81,132,
       228,145,251,170,71,29)

df1 <- data.frame(x,y)
plot(df1, pch = 16, cex = 2,
     xlab = "주택면적(x)",
     ylab = "주택가격(y)")

reg1 <- lm(y ~ x, data = df1)
abline(reg1, col ="red", lwd=2)

predict(reg1, data.frame(x=c(3000,4000)))

reg2 <- lm(x ~ y, data = df1)
predict(reg2, data.frame(y=c(150))) 

df1$y_hat <- reg1$fitted.values

df1$잔차 <- reg1$residuals

sum(df1$잔차)
