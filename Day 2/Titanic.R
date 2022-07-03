library(readr)
Titanic <- read_csv("Downloads/Titanic.csv")

Titanic$Pclass = factor(Titanic$Pclass)
Titanic$Survived = factor(Titanic$Survived)
#Titanic$Sex = factor(Titanic$Sex)

#Descriptive Statistics
summary(Titanic)
str(Titanic)

# Create bar plot using ggplot2
ggplot(Titanic, aes(x=Pclass)) + geom_bar()
ggplot(Titanic, aes(x=Pclass, color = Sex, fill = Sex)) + 
  geom_bar() + theme_bw() + theme(legend.position="top")
ggplot(Titanic, aes(x=Pclass, color = Sex, fill = Sex)) + 
  geom_bar(position="dodge") + theme_bw() + theme(legend.position="top")

# Create box plot using ggplot2
ggplot(Titanic, aes(Sex, Age)) + geom_boxplot()
ggplot(Titanic, aes(x=Pclass, y=Age, fill = Sex)) + 
  geom_boxplot(outlier.color = "dark orange", outlier.shape = 4, notch = TRUE) + 
  coord_flip() + theme_bw() + theme(legend.position="top")

#Create histogram using ggplot2
ggplot(Titanic, aes(x=Age)) + geom_histogram(binwidth = 10)
ggplot(Titanic, aes(x=Age, color=Sex, fill = Sex)) + 
  geom_histogram(binwidth = 10) + theme_bw() + theme(legend.position="top")

# load in-built dataset from r mtcars

mydata <- mtcars[, c(1,3,4,5,6,7)]
head(mydata)

cormat <- round(cor(mydata),2)
head(cormat)
