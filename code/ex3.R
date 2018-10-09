#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex3 <- read.xlsx("exercicio3.xls", sheetName = "Plan1")
head(ex3)

#Moda função
Mode = function(x){ 
  ta = table(x)
  tam = max(ta)
  if (all(ta == tam))
    mod = NA
  else
    if(is.numeric(x))
      mod = as.numeric(names(ta)[ta == tam])
  else
    mod = names(ta)[ta == tam]
  return(mod)
}
#Moda execução
moda = Mode(ex3$Filhos)
moda

#Mediana
mediana = median(ex3$Filhos)
mediana

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Salvando imagem grafico
png(filename = "graficos/ex3_graficoMediana.png", width = 480, height = 480)

#Plotando grafico
plot(ex3$Filhos, xlab="Quantidade", ylab="Filhos", main="Grafico Mediana", las=1)
abline(mediana, 0, col="blue")

#Finalizando
dev.off()

#Salvando imagem grafico
png(filename = "graficos/ex3_graficoModa.png", width = 480, height = 480)

#Plotando grafico
plot(ex3$Filhos, xlab="Quantidade", ylab="Filhos", main="Grafico Moda", las=1)
abline(moda, 0, col="red")

#Finalizando
dev.off()

