library(ggplot2)

CPI_Inflation = read.csv("CPI_Inflation.csv")

ggplot(subset(CPI_Inflation, CPI_Inflation$Year >= 1971 & CPI_Inflation$Year<= 2021), select = c(CPI_Inflation$Year), 
       aes(x=Year, y=(Jan + Feb + Mar + Apr + May + Jun + Jul + Aug + Sep + Oct + Nov + Dec) / 12)) + 
  geom_line() + ggtitle("Question 3 Graph") + ylab("CPI") + 
  scale_x_continuous(breaks=c(1971, 1981, 1991, 2001, 2011, 2021))


