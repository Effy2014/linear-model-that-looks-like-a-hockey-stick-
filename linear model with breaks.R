x <- -5:5
y <- c(5.12, 3.93, 2.67, 1.87, 0.52, 0.08, 0.93, 2.05, 2.54, 3.87, 4.97)
knots=0
splineTerm <- sapply(knots, function(knot){(x>knot)*(x-knot)})
xMat <- cbind(1, x, splineTerm)
lm(y~xMat-1)
yhat <- predict(lm(y~xMat-1))
plot(x,y,frame=F)
lines(x,yhat)
