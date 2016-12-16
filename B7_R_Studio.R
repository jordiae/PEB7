
setwd("/home2/users/alumnes/1202152/dades/PEB7")

dades = read.table("data.txt",header=TRUE)
dadesBWCases = read.table("data_best_worst_cases.txt",header=TRUE)
#4 Columnes N Insercio Bombolla Fusio

#Busca medidors interesantes
summary(dades)

#Plot de cada algoritme
plot(dades$N,dades$Insercio,type="l",main="Gràfic n°elements/temps per inserció",lwd=5,col="blue",xlab="N", ylab="Temps")

plot(dades$N,dades$Bombolla,type="l",main="Gràfic n°elements/temps per bombolla",lwd=5,col="red",xlab="N", ylab="Temps")

#plot(dades$N,dades$Fusio,type="p",main="Gràfic n°elements/temps per fusió",lwd=5,col="orange",xlab="N", ylab="Temps")

#Plot dels 3 junts
dades

plot(dades$N, dades$Bombolla, type="l", lwd=5, col="blue",xlab="N", ylab="Temps", xaxs="i", yaxs="i")
lines(dades$N,dades$Insercio, lwd=5, col="red")
#lines(dades$N,dades$Fusio, lwd=20, col="green")
legend("topleft", legend=c("Bombolla","Insercio","Fusio"), lwd=c(3,3,3), col=c("blue","red","green"))



#Proves Hipotesi
#Si merge es el millor per vectors de +10000

mitjanaI1 = mean(dades$Insercio)
mitjanaB1 = mean(dades$Bombolla)
mitjanaF1 = mean(dades$Fusio)

mitjanaI2 = mean(dades$Insercio)/mean(dades$N)
mitjanaB2 = mean(dades$Bombolla)/mean(dades$N)
mitjanaF2 = mean(dades$Fusio)/mean(dades$N)


mitjanaI3 = mitjanaI2*10000
mitjanaB3 = mitjanaB2*10000
mitjanaF3 = mitjanaF2*10000


#Hipotesis
#Hipotesis nula H0: mitjanamerge = mitjanaisert 
#               H1: mitjanamerge < mitjanainsert (unilateral)


qqplot(dades$N,dades$Insercio)
qqplot(dades$N,dades$Bombolla)

hist(dades$Insercio)
hist(dades$Bombolla)




dades$IN10000<-dades$Insercio*mean(dades$N)
dades$BN10000<-dades$Bombolla*mean(dades$N)
dades$FN10000<-dades$Fusio*mean(dades$N) 

mitjEstadistico1 = mitjanaI1
mitjEstadistico2 = mitjanaF1

desvEstadistico1 = sd(dades$Insercio)
desvEstadistico2 = sd(dades$Fusio)

varEstadistico1 = desvEstadistico1*desvEstadistico1
varEstadistico2 = desvEstadistico2*desvEstadistico2
N = length(dades$N)

varconjunta=((N-1)*desvEstadistico1+(N-1)*desvEstadistico2)/(N*2-2)

TEstadistico = (mitjEstadistico1*mitjEstadistico2)/(varconjunta*sqrt(1/N+1/N))
#Per vectors entre 5 i 20 elements si ho segueix sent
t.test(dades$IN10000,dades$FN10000,var.equal = TRUE)

? t.test
#Casos extrems merge to grandes
