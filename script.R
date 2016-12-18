
setwd("/home2/users/alumnes/1202152/dades/PEB7")

dades = read.table("DataMaxima.txt",header=TRUE)
#4 Columnes N Insercio Bombolla Fusio
dades<-DataMaxima
#Busca medidors interesantes
summary(dades)

#Plot de cada algoritme
plot(dades$N,dades$Insercio,type="l",main="Gràfic n°elements/temps per inserció",lwd=5,col="blue",xlab="N", ylab="Temps")

plot(dades$N,dades$Bombolla,type="l",main="Gràfic n°elements/temps per bombolla",lwd=5,col="red",xlab="N", ylab="Temps")

#plot(dades$N,dades$Fusio,type="p",main="Gràfic n°elements/temps per fusió",lwd=5,col="orange",xlab="N", ylab="Temps")

#Plot dels 3 junts
dades

plot(dades$N, dades$Bombolla, type="p", lwd=1, col="blue",xlab="N", ylab="Temps", xaxs="i", yaxs="i")
lines(dades$N,dades$Insercio, lwd=1, col="red")
#lines(dades$N,dades$Fusio, lwd=20, col="green")
legend("topleft", legend=c("Bombolla","Insercio"), lwd=c(3,3), col=c("blue","red"))



#Proves Hipotesi
#Si merge es el millor per vectors de +10000

mitjanaI = mean(dades$Insercio)
mitjanaB = mean(dades$Bombolla)


#Hipotesis
#Hipotesis nula H0: mitjanamerge = mitjanaisert 
#               H1: mitjanamerge < mitjanainsert (unilateral)

require(graphics)

y <- rt(200, df = 5)
qqnorm(log(dades$Insercio,exp(1))); qqline(dades$Insercio, col = 2)


?qqplot
?qqnorm

qqnorm(dades$N,log(dades$Insercio,exp(1)),main = "Normal Q-Q Plot",)
qqplot(dades$N,datum$Insercio)
qqplot(dades$N,dades$Bombolla)

hist(dades$Insercio)
hist(dades$Bombolla)

N = length(dades$N)

#Per vectors entre 5 i 20 elements si ho segueix sent
?t.test
t.test(dades$Bombolla,dades$Insercio,alternative="greater",paired=TRUE,var.equal = FALSE,conf.level = .99)
#Casos extrems merge to grandes

