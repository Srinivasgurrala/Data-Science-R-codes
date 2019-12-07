#Dotplots & Boxplots
library("lattice")
attach(WC_AT)
dotplot(AT, main="Dot Plot of AT Circulations",col="dodgerblue4")
dotplot(Waist, main="Dot Plot of Waist Circulations", col="dodgerblue4")
boxplot(AT,col="dodgerblue4")
boxplot(Waist,col="dodgerblue4")
#Scatter Plot:
  plot(Waist,AT,main="Scatter Plot ", col="Dodgerblue4", col.main="Dodgerblue4", col.lab="Dodgerblue4", xlab="Waist Circulations", ylab="AT Circulations", pch=20)
#Regression Model and its summary
reg.model<-lm(AT~Waist,data = data)
summary(reg.model)
#Prediction Intervals for new observations:
  predict(reg.model,data.frame(Waist=c(60)))
