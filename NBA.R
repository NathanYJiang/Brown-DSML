library(readxl)
NBA <- read_excel("Downloads/NBA.xlsx")
View(NBA)

mydata <- NBA[, c(1,2,3,4)]

# Perform correlations
cor(NBA)

ggplot(NBA, aes(x=`Field Goal % Difference`, y = Wins)) + 
  geom_point() + geom_smooth(method = 'lm')

# linear regression
fit2 = lm(NBA)
res = residuals(fit2)

summary(fit2)

