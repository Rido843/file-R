library(readxl)
ekonometri1 <- read_excel("Ekonometri1.xlsx")
class(ekonometri1['X'])
xvector = c()
for(atmp in ekonometri1['X']) { xvector <- atmp }
yvector = c()
for(atmp in ekonometri1['Y']) { yvector <- atmp }
#perbaikan
xy<-xvector*yvector
xkuadrat<-xvector^2
ykuadrat<-yvector^2
jumlahx<-sum(xvector)
jumlahxkuadrat<-sum(xkuadrat)
jumlahy<-sum(yvector)
jumlahxy<-sum(xy)
jumlahykuadrat<-sum(ykuadrat)
n<-length(yvector)
XaksenX<-matrix(c(n,jumlahx,jumlahx,jumlahxkuadrat),2,2)
XaksenY<-matrix(c(jumlahy,jumlahxy),2,1)
invxaksenx<-solve(XaksenX)
b<-invxaksenx%*%XaksenY
b
a<-b[1,]
b1<-b[2,]
Ybar<-a+b1*xvector
e=yvector-Ybar
ekuadrat<-e^2
xe<-x*ekuadrat
jumlahe<-sum(ekuadrat)
jumlahekuadrat<-sum(ekuadrat^2)
jumlahxe<-sum(xe)
Chihitung<-n*r12kuadrat
Chihitung
xaksene<-matrix(c(jumlahe,jumlahxe),2,1)
A<-invxaksenx%*%xaksene
JKT<-jumlahekuadrat-(1/n)*jumlahe^2
A0<-A[1,]
A1<-A[2,]
JKG<-jumlahekuadrat-A0*jumlahe-A1*jumlahxe
JKT
JKG
Rkuadrat<-1-(JKG/JKT)
Rkuadrat
Chihitung<-n*Rkuadrat
Chihitung

