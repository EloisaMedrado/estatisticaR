#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex1 <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(ex1)

#Calculando Média
media = mean(ex1$Taxas)
media
#Calculando Mediana
mediana = median(ex1$Taxas)
mediana
#Calculando Variancia
variancia = var(ex1$Taxas)
variancia
#Calculando Desvio Padrao
desvio = sd(ex1$Taxas)
desvio
#Calculando Valor minimo
minimo = min(ex1$Taxas)
minimo
#Calculando Valor maximo
maximo = max(ex1$Taxas)
maximo
#Calculando Quartis 1 e 3
ordenado = sort(ex1$Taxas)
quartis = quantile(ordenado,type=4)
quartis
#Também é possivel
quartis2 = summary(ex1$Taxas)
quartis2

