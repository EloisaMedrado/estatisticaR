#Instalando biblioteca
install.packages("xlsx", dependencies = TRUE)

#Limpando area
rm(list = ls())

#Definindo localização dados
setwd("C:\\projetoR\\dados")

#Carregando biblioteca
library(xlsx)

#Lendo planilha
ex2 <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(ex2)

#Break
brk<-seq(10,97,10)

#Frequenciando dados
table(cut(ex2$Casa, breaks=brk, right=F)) 

#Medidas de Posição
#Média
media = mean(ex2$Casas)
media
#Mediana
mediana = median(ex2$Casas)
mediana
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
moda = Mode(ex2$Casas)
moda

#Medidas de Dispersão
#Variancia
variancia = var(ex2$Casas)
variancia
#Desvio Padrao
desvio = sd(ex2$Casas)
desvio
#Coeficiente de variacao
coeficienteVar = 100*sd(ex2$Casas)/mean(ex2$Casas)
coeficienteVar

#Definindo localização graficos
setwd("C:\\projetoR\\")

#Gerando grafico de Medidas de Posição
##Salvando imagem grafico
png(filename = "graficos/ex2_graficoPosicao.png", width = 480, height = 480)

##Plotando grafico
plot(ex2$Casas, xlab="Quantidade", ylab="Casas", main="Grafico Média| Mediana| Moda", las=1)
abline(media, 0, col="red")
abline(mediana, 0, col="blue")
abline(moda, 0, col="purple")

##Finalizando
dev.off()

#Gerando grafico de Medidas de Dispersão
##Salvando imagem grafico
png(filename = "graficos/ex2_graficoDispersao.png", width = 480, height = 480)

##Plotando grafico
plot(ex2$Casas, xlab="Quantidade", ylab="Casas", main="Grafico Variancia| Desvio| CV", las=1)
abline(variancia, 0, col="red")
abline(desvio, 0, col="blue")
abline(coeficienteVar, 0, col="purple")

##Finalizando
dev.off()

