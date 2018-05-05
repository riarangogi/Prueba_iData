library(dummies)

data2_mod<-data2
##creamos las variables dummies para el modelo. Esta función crea k variables
#(una por cada categoria), entonces se debe eliminar 1

data2_mod<-cbind(data2_mod,dummy(data2_mod$formpag,sep = "_"))
data2_mod<-cbind(data2_mod,dummy(data2_mod$ocup,sep = "_"))
data2_mod<-cbind(data2_mod,dummy(data2_mod$educ,sep = "_"))
data2_mod<-cbind(data2_mod,dummy(data2_mod$civil,sep = "_"))
data2_mod<-cbind(data2_mod,dummy(data2_mod$sex,sep = "_"))
data2_mod<-cbind(data2_mod,dummy(data2_mod$tipocont,sep = "_"))
data2_mod<-cbind(data2_mod,dummy(data2_mod$cluster,sep = "_"))