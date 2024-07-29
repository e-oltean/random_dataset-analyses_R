# in order to decide if we are going to chose parametric
# or non-parametric test, we must test the assumptions 
#required for each category. The most important assumption
# is normality.  In order to test that, we will use 
# Kolmogorov-Smirnov test, Shapiro-Wilk test, and Jarque-Bera test

# generate normal data

x=rnorm(100, mean = 50, sd = 200)
y=rnorm(100, mean = 50, sd = 200)
z= rnorm(100, mean = 50, sd = 200)
w=rnorm(100, mean = 50, sd = 200) + x + y + z
dfr=data.frame(x,y,z,w)

# Shapiro Wilk test
shapiro.test(x)
shapiro.test(y)
shapiro.test(z)
shapiro.test(w)
