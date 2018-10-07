#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex9 <- read.xlsx("exercicio9.xls", sheetName = "Plan1")
head(ex9)

#Min = 4, Max = 25, Amplitude = 2
brk<-seq(4,24,2)

#Intervalos com aplitude 2
intervalos<-c("4-6", "6-8", "8-10", "10-12", "12-14", "14-16", "16-18", "18-20","20-22", "22-24")

#Frequenciando dados
table(cut(ex9$Salarios, breaks=brk, labels=intervalos, right=F)) 

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Salvando imagem grafico
png(filename='graficos/ex9_histograma.png', width = 800, height = 500)

#Plotando histograma
hist(ex9$Salarios, main="Histograma Salarios", 
     col=c("red"), col.main="darkgray", 
     xlab="Salarios", ylab="Densidade",
     breaks=brk,right=F,labels=intervalos)

#Finalizando
dev.off() 

