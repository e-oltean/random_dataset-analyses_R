# generate data
x=sample(1:100, 100, replace=TRUE)
y=sample(1:100, 100, replace=TRUE)
z= sample(1:100, 100, replace=TRUE)
w=sample(1:100, 100, replace=TRUE) + x + y + z
dfr=data.frame(x,y,z,w)


# Bartlett’s Test of Sphericity

install.packages('psych')
library(psych)
cor_matrix <- cor(dfr)
cortest.bartlett(cor_matrix, n = nrow(dfr))

#  Shapiro-Wilk normality test

shapiro.test(x)
shapiro.test(y)
shapiro.test(z)
shapiro.test(w)

# perform Kolmogorov-Smirnov test 

ks.test(x, pnorm)
ks.test(x, w)

# conduct Jarque-Bera test

install.packages('tseries')
jarque.bera.test(dataset)

# install non-parametric package
install.packages('np')
library(np)

# Wilcoxon Signed Rank Test for one group

wilcox.test(w)


## dependent 2-group Wilcoxon Signed Rank Test

wilcox.test(x,w,paired=TRUE)

# independent 2-group Mann-Whitney U Test x, y numeric
wilcox.test(y,x) 
# Kruskal Wallis Test One Way Anova by Ranks

pairwise.wilcox.test(x,w,p.adjust.method = "BH")

