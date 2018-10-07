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