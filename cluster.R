library(ggplot2)
data3<-data2[,c(5,6,7,8,9,17)]

#Ya que las variables cuentan con escalas muy diferentes, escalamos los datos
data3_scale<-scale(data3)

pc_data3<-prcomp(data3_scale)
var<-pc_data3[[1]]^2
plot(pc_data3,type='l',main = 'Varianza de las primeras Componentes Principales')
#Usando el criterio de *Keisy* para la elección de la componentes principales el 
#cual dice que la varianza debe ser mayor a uno,luegos nos quedamos con las dos 
#primeras.

set.seed(7)
data3_cluster<-kmeans(pc_data3$x[,1:2], 3, nstart = 20)
data2$cluster<-data3_cluster$cluster

data3_cluster$cluster <- as.factor(data3_cluster$cluster)
pc_data3$x<-data.frame(pc_data3$x)
ggplot(pc_data3$x, aes(PC1, PC2, color = data3_cluster$cluster)) + geom_point()
#Estecluster se hace es sobre las condiciones en que se emitio el prestamo.
