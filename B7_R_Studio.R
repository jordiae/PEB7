
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

mitjanaI = mean(dades$Insercio)
mitjanaB = mean(dades$Bombolla)


#Hipotesis
#Hipotesis nula H0: mitjanamerge = mitjanaisert 
#               H1: mitjanamerge < mitjanainsert (unilateral)


qqplot(dades$N,dades$Insercio)
qqplot(dades$N,dades$Bombolla)

hist(dades$Insercio)
hist(dades$Bombolla)

N = length(dades$N)

#Per vectors entre 5 i 20 elements si ho segueix sent

t.test(dades$Bombolla,dades$Insercio,paired=TRUE,var.equal = FALSE)
#Casos extrems merge to grandes
