
#post-hoc comparisons are designed to prevent Type I errors. 
#It is designed to prevent Type 1 error when you make a large 
#number of comparisons. This is done by setting more stringent
#alpha levels and therefore is harder to get significance.

# F test can be used as a part of a posthoc test by using it ig it is relevant
#then calculating the correlations between variables

#If f-test is significant you test each different between groups

# generate normal data

x1=rnorm(100, mean = 50, sd = 200)
y1=rnorm(100, mean = 50, sd = 200)
z1= rnorm(100, mean = 50, sd = 200)
w1=rnorm(100, mean = 50, sd = 200) + x1 + y1 + z1
dfr_nrm=data.frame(x1,y1,z1,w1)

var.test(w1, x1, alternative = "two.sided")

cor_matrix1 <- cor(dfr_nrm)
print(cor_matrix1)
