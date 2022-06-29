library(readxl)
Dominos <- read_excel("~/Downloads/Dominos.xlsx")
View(Dominos)

#Perform the one-tailed t test
t.test(Dominos$Time, alternative = "less", mu=173.62)


