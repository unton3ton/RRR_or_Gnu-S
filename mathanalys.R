# https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/nlm

f <- function(x) x**2 - exp(0.6*x)*sin(x)
x0 <- -9
print(nlm(f, x0)) 

# $minimum
# [1] -62.35404
# 
# $estimate
# [1] 8.296214
# 
# $gradient
# [1] -7.3245e-06
# 
# $code
# [1] 1
# 
# $iterations
# [1] 8


print(sprintf("minimum f = %f", nlm(f, x0)[1]))
print(sprintf("extremum x = %f", nlm(f, x0)[2]))
print(sprintf("iterations = %0.0f", nlm(f, x0)[5]))
# OR
iter <- as.integer(nlm(f, x0)[5])
print(sprintf("iterations = %d", iter))


print(D(expression(x**2 - exp(0.6*x)*sin(x)),"x")) # Производная
dfdx <- function(x) 2*x - (exp(0.6*x)*0.6*sin(x) + exp(0.6*x)*cos(x))
print(integrate(dfdx, 0, 1))



# create data
x <- -10:13
y <- x**2 - exp(0.6*x)*sin(x)
data <- data.frame(x,y)

# Plot
plot(data, type="p", xlab = "x", ylab = "f(x)", 
     main = "f(x) = x^2 - e^(0.6*x)*sin(x) &
     y = (abs(x^2-17))^1.5 - 150",
     ylim=c(-850,900))
grid()
text(8,-121,"a local minimum", cex = 0.85)
par(bg="orange")

curve((abs(x^2-17))^1.5 - 150, -15, 15, add=T)
