library(ggplot2)
library(lattice)

grocery <- read.csv("Grocery.csv")
grocery$Discount <-as.numeric(sub("%","", grocery$Discount))/100

plot(grocery$Price, grocery$Sales, type = "p")

xyplot(Sales~Price, data = grocery, type = "p")

ggplot(grocery, aes(x = Price, y = Sales, color = Discount))+
  geom_point()
