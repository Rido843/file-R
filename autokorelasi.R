library(readxl)
ekonometri<- read_excel("DataEkono2.xlsx")
x1vector = c()
for(atmp in ekonometri['X1']) { x1vector <- atmp }
x2vector = c()
for(atmp in ekonometri['X2']) { x2vector <- atmp }
yvector = c()
for(atmp in ekonometri['Y']) { yvector <- atmp }
x1x2<-x1vector*x2vector
x1y<-x1vector*yvector
x2y<-x2vector*yvector
x1kuadrat<-x1vector^2
x2kuadrat<-x2vector^2
jumlahx1x2<-sum(x1x2)
jumlahx1<-sum(x1vector)
jumlahx2<-sum(x2vector)
jumlahx1kuadrat<-sum(x1kuadrat)
jumlahx2kuadrat<-sum(x2kuadrat)
jumlahy<-sum(yvector)
jumlahx1y<-sum(x1y)
jumlahx2y<-sum(x2y)
n<-length(yvector)
XaksenX<-matrix(c(n,jumlahx1,jumlahx2,jumlahx1,jumlahx1kuadrat,jumlahx1x2,jumlahx2,jumlahx1x2,jumlahx2kuadrat),3,3)
XaksenY<-matrix(c(jumlahy,jumlahx1y,jumlahx2y),3,1)
b<-solve(XaksenX)%*%XaksenY
b
b0<-b[1,]
b1<-b[2,]
b2<-b[3,]
Ybar<-b0+b1*x1vector+b2*x2vector
e=yvector-Ybar
etdikurangetmin1=diff(e)*-1
jumlahekuadrat=sum(e^2)
jumlahe1kuadrat=sum(etdikurangetmin1^2)
D=jumlahe1kuadrat/jumlahekuadrat
D

