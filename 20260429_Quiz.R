y <- rep(c(2,4), times = 5)
y_hat <- 3
y_bar <- mean(y)

SST <- sum((y-y_bar)^2)
SSR <- sum((y_hat-y_bar)^2)
SSE <- SST - SSR

