'Often a small number of data points can  have an extremely large influence on a regression,
sometimes so much so that the regression assumptions are violated as a result of these points.'
'A data point with high leverage, is a data point that could have a large influence when fitting 
the model. the method we will use more often, is to simply fit a regression,  then use the 
hatvalues() function, which returns the leverages.'

x=rnorm(100)
y=rnorm(100)
z=rnorm(100)
w=rnorm(100) + x + y + z

model=lm(w~x+y+z)

shapiro.test(resid(model))

'number of points which are large leverage'
sum(hatvalues(model)>2*mean(hatvalues(model)))

sum(abs(rstandard(model))>2)

