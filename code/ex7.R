#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex7 <- read.xlsx("exercicio7.xls", sheetName = "Plan1")
head(ex7)

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Salvando imagem grafico
png(filename = "graficos/ex7_barras.png", width = 480, height = 480)

#Plotando barras
barplot(ex7$Atendimento, names.arg = ex7$Areas, 
        col = c("black", "red", "green", "lavender", "blue"), 
        ylim=c(0,370),
        legend.text = ex7$Areas, 
        main = "Atendimentos x Areas",
        xlab="Areas", ylab=" Qt Atendimentos")
dev.off()
