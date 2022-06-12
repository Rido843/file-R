library(readxl)
ekonometri<- read_excel("DataEkono2.xlsx")
x1vector = c()
for(atmp in ekonometri['X1']) { x1vector <- atmp }
x2vector = c()
for(atmp in ekonometri['X2']) { x2vector <- atmp }
yvector = c()
for(atmp in ekonometri_multikolinieritas['Y']) { yvector <- atmp }
x1x2<-x1vector*x2vector
x1kuadrat<-x1vector^2
x2kuadrat<-x2vector^2
jumlahx1x2<-sum(x1x2)
jumlahx1<-sum(x1vector)
jumlahx2<-sum(x2vector)
jumlahx1kuadrat<-sum(x1kuadrat)
jumlahx2kuadrat<-sum(x2kuadrat)
n<-length(yvector)
pembilang<-(n*jumlahx1x2)-(jumlahx1*jumlahx2)
penyebut<-((n*jumlahx1kuadrat-(jumlahx1)^2)*(n*jumlahx2kuadrat-(jumlahx2)^2))^(1/2)
r12<-pembilang/penyebut
r12kuadrat=r12^2
r12kuadrat
TOL<-1-r12kuadrat
Vif=1/TOL
Vif
