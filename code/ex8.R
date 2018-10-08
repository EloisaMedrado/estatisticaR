#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex8 <- read.xlsx("exercicio8.xls", sheetName = "Plan1")
head(ex8)

#Break
brk<-seq(4,4,1)

#Frequenciando dados
table(cut(ex8$AlturaPacientes, breaks=brk, right=F)) 

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Salvando imagem grafico
png(filename = "graficos/ex8_histograma.png", width = 480, height = 480)

#Plotando histograma
hist(ex8$AlturaPacientes, main="Histograma Alturas Pacientes",
     xlab="Alturas", ylab="Densidade",
     col=c("red"), col.main="darkgray", 
     right=F, breaks=brk)

#Finalizando
dev.off()

