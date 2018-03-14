library(readxl)
students <- read_excel("~/Desktop/students.xlsx")
View(students)

boxplot(students$SAT~students$Gender)
boxplot(students$SAT~students$Smoking)
boxplot(students$SAT~students$Country)
boxplot(students$SAT~students$Major)

birthweights <- read.table("/home/didier/Desktop/birthweight.txt",T)
View(birthweights)

boxplot(birthweights$bwt ~ birthweights$race)
boxplot(birthweights$bwt ~ birthweights$smoke)

birthweights$low <- NULL
birthweights$smoke <- as.factor(birthweights$smoke)
birthweights$ht <- as.factor(birthweights$ht)
birthweights$ui <- as.factor(birthweights$ui)
birthweights$ftv <- round(runif(189,0,5))
birthweights$ptl <- round(runif(189,0,2))

write(birthweights,"birthweight.txt")
library(xlsx)
write.xlsx(birthweights, "/home/didier/Desktop/birthweights.xlsx")
write.csv(birthweights, "/home/didier/Desktop/birthweights.csv")



library(readxl)
birthweight <- read_excel("~/Desktop/birthweight.xlsx")
View(birthweight)


boxplot(birthweight$bwt ~ birthweight$race)
boxplot(birthweight$bwt ~ birthweight$smoke)


library(ggplot2)

ggplot(birthweights,aes(as.factor(birthweights$smoke),birthweights$bwt,fill=as.factor(birthweights$smoke))) + geom_boxplot()

ggplot(birthweights,aes(birthweight$ui,birthweight$bwt,fill=birthweight$ui)) + geom_boxplot()
ggplot(birthweights,aes(birthweight$ht,birthweight$bwt,fill=birthweight$ht)) + geom_boxplot()


       