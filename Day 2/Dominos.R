library(readxl)
Dominos <- read_excel("~/Downloads/Dominos.xlsx")
View(Dominos)

#Perform the one-tailed t test
t.test(Dominos$Time, alternative = "less", mu=173.62)

# One Sample t-test
# 
# data:  Dominos$Time
# t = -4.2568, df = 29, p-value = 9.921e-05
# alternative hypothesis: true mean is less than 173.62
# 95 percent confidence interval:
#   -Inf 164.7089
# sample estimates:
#   mean of x 
# 158.789 

# Since the p-value (9.921e-05) < critical value (0.05), we accept Ha 

#Perform the two-tailed t test
t.test(Dominos$Time, alternative='two.sided', mu=173.62)

# One Sample t-test
# 
# data:  Dominos$Time
# t = -4.2568, df = 29, p-value = 0.0001984
# alternative hypothesis: true mean is not equal to 173.62
# 95 percent confidence interval:
#   151.6632 165.9148
# sample estimates:
#   mean of x 
# 158.789 

# Since the p-value (0.0001984) < critical value (0.05), we accept Ha 
