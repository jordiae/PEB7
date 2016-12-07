
setwd("/home2/users/alumnes/1202152/dades/PEB7")

dades = read.table("data.txt",header=TRUE)
#4 Columnes N Insercio Bombolla Fusio

#Busca medidors interesantes
summary(dades)
MitjanaRelativaInsert = sum(dades$Insercio)/sum(dades$N)
MitjanaInsert = mean(dades$Insercio)
MitjanaRelativaInsert
MitjanaInsert

MitjanaRelativaBubble = sum(dades$Bombolla)/sum(dades$N)
MitjanaBombolla = mean(dades$Bombolla)
MitjanaRelativaBubble
MitjanaBombolla

MitjanaRelativaMerge = sum(dades$Fusio)/sum(dades$N)
MitjanaFusio = mean(dades$Fusio)
MitjanaRelativaMerge
MitjanaFusio

#Plot de cada algoritme
plot(dades$N,dades$Insercio,type="l",main="Gràfic n°elements/temps per inserció",lwd=5,col="blue",xlab="N", ylab="Temps")

plot(dades$N,dades$Bombolla,type="l",main="Gràfic n°elements/temps per bombolla",lwd=5,col="red",xlab="N", ylab="Temps")

plot(dades$N,dades$Fusio,type="l",main="Gràfic n°elements/temps per fusió",lwd=5,col="orange",xlab="N", ylab="Temps")

#Plot dels 3 junts


plot(dades$N, dades$Bombolla, type="l", lwd=5, col="blue",xlab="N", ylab="Temps", xaxs="i", yaxs="i")
lines(dades$N,dades$Insercio, lwd=5, col="red")
lines(dades$N,dades$Fusio, lwd=5, col="green")
legend("topleft", legend=c("Bombolla","Insercio","Fusio"), lwd=c(3,3,3), col=c("blue","red","green"))

#New data(millors i pitjors casos)
dadesBWCases = read.table("data_best_worst_cases.txt",header=TRUE)
#7 Columnes => N Worst_insecio Worst_Bombolla Worst_Fusio Best_insecio Best_Bonmbolla Best_Fusio
summary(dadesBWCases)

plot(dadesBWCases$N, dadesBWCases$BombollaWorst, type="l", lwd=3, col="#1E0FF2",xlab="N", ylab="Temps", xaxs="i", yaxs="i")
lines(dadesBWCases$N,dadesBWCases$BombollaBest, lwd=5, col="#00FFCC")

plot(dadesBWCases$N, dadesBWCases$FusioWorst, type="l", lwd=3, col="#990000",xlab="N", ylab="Temps", xaxs="i", yaxs="i")
lines(dadesBWCases$N,dadesBWCases$FusioBest, lwd=5, col="#FF9151")


plot(dadesBWCases$N, dadesBWCases$InsercioWorst, type="l", lwd=3, col="#006600",xlab="N", ylab="Temps", xaxs="i", yaxs="i")
lines(dadesBWCases$N,dadesBWCases$InsercioBest, lwd=5, col="#11DB69")



plot(dadesBWCases$N, dadesBWCases$BombollaWorst, type="l", lwd=3, col="#1E0FF2",xlab="N", ylab="Temps", xaxs="i", yaxs="i")
lines(dadesBWCases$N,dadesBWCases$BombollaBest, lwd=5, col="#00FFCC")
lines(dadesBWCases$N,dadesBWCases$FusioWorst, lwd=5, col="#990000")
lines(dadesBWCases$N,dadesBWCases$FusioBest, lwd=5, col="#FF9151")
lines(dadesBWCases$N,dadesBWCases$InsercioWorst, lwd=5, col="#006600")
lines(dadesBWCases$N,dadesBWCases$InsercioBest, lwd=5, col="#11DB69")
legend("topleft", legend=c("Pitjor Cas Bombolla","Millor Cas Bombolla","Pitjor Cas Fusio","Millor Cas Fusio","Pitjor Cas Insercio","Millor Cas Insercio"), lwd=c(3,3,3), col=c("#1E0FF2","#00FFCC","#990000","#FF9151","#006600","#11DB69"))




#Proves Hipotesi
#Si merge es el millor per vectors de +1000


#Per vectors entre 5 i 20 elements si ho segueix sent

#Casos extrems merge to grandes
