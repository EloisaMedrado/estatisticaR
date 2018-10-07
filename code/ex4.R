#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex4 <- read.xlsx("exercicio4.xls", sheetName = "Plan1")
head(ex4)

#Break
brk<-seq(4,12,2)

#Frequenciando dados
table(cut(ex4$Salarios, breaks=brk, labels=c("4-6","6-8","8-10", "10-12"), right=F)) 

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Salvando imagem grafico
png(filename = "graficos/ex4_histograma.png", width = 480, height = 480)

#Plotando histograma
hist(ex4$Salarios, main="Histograma Salarios",
     xlab="Salarios", ylab="Densidade",
     col=c("red"), col.main="darkgray", 
     right=F, breaks=brk)

#Finalizando
dev.off()

