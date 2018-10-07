#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex5 <- read.xlsx("exercicio5.xls", sheetName = "Plan1")
head(ex5)

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Salvando imagem grafico
png(filename = "graficos/ex5_barras.png", width = 480, height = 480)

#Plotando barras
barplot(ex5$Pessoas, names.arg = ex5$Marcas, 
        col = c("blue", "green", "red", "lavender", "black"), 
        ylim=c(0,45),
        legend.text = ex5$Marcas, 
        main = "Antitermicos preferidos",
        xlab="Marca", ylab=" Qt Usuarios")
dev.off()
