#Instalando biblioteca
install.packages("qcc", repos = "http://cran.rstudio.com/")

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(qcc)

#Lendo planilha
ex6 <- read.xlsx("exercicio6.xls", sheetName = "Plan1")
head(ex6)

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Salvando imagem grafico
png(filename = "graficos/ex6_pareto.png", width = 480, height = 480)

#Plotando grafico de pareto
attach(ex6)
names(ex6)
label <- Pessoas
names(label) <- Qualidade
label
pareto.chart(label)

dev.off()

