state <- as.data.frame(state.x77)
//homework 


set.seed(1)
x1 <- sample(2:30, 25)
set.seed(2)
x2 <- sample(36:1460,25)
set.seed(3)
y <- round(2.341 + 1.6159*x1 + 0.015*x2 + rnorm(25, 0, 3.25), 2)
df1 <- data.frame(x1, x2, y)
View(df1)
reg1 <- lm(y ~ ., data = df1)
w <- c(0,0,0)
alpha <- 0.01
x <- as.matrix(cbind(1, df1[,1:2]))
y <- df1$y

for (i in 1:300000) {
  w <- w - alpha*t(x)%*%(x%*% w- y)/length(y)
}
