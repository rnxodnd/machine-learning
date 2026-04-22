set.seed(1)
x1 <- sample(2:30, 25)
set.seed(2)
x2 <- sample(36:1460,25)
set.seed(3)
y <- round(2.341 + 1.6159*x1 + 0.015*x2 + rnorm(25,0,3.25),2)
df1 <- data.frame(x1, x2, y)
reg1 <- lm(y ~ x1 + x2, data = df1)

y_hat <- reg1$fitted.values
y <- df1$y
y_bar <- mean(y)
SSE <- sum((y - y_hat)^2)
SSR <- sum((y_hat - y_bar)^2)
SST <- sum((y - y_bar)^2)            #SSE + SSR

R2<- SSR/SST


summary(reg1)$r.squared

