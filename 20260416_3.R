f <- function(x) x^2-10*x+26
curve(f, 2.5,7.5, lwd=2)
points(7, f(7), pch=16, cex=2, col="red")
x <- 7
alpha <- 0.99999999999999
grad <- function(x) 2*x-10
for(i in 1:100) {
  x <- x - alpha*grad(x)
  points(x, f(x), pch=16, cex=2, col="green")
  Sys.sleep(0.5)
}

