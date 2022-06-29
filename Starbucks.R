library(readxl)
Starbucks <- read_excel("Downloads/Starbucks.xlsx")
View(Starbucks) 

# Perform correlations
cor(Starbucks)

ggplot(Starbucks, aes(x=Income, y = Amount)) + 
  geom_point() + geom_smooth(method = 'lm')

# linear regression
fit2 = lm(Starbucks$Amount ~ Starbucks$Cups)
res = residuals(fit2)

summary(fit2)

