library(readxl)
library(data.table)
data<-read_excel('Cartera_Consumo.xlsx')


data2<-data.table(data$cedula)

##la variable a predecir es default, as? que primero hagamosla
##dicotomica

data2$default<-as.numeric(data$default=='Bueno')

##pruebas de independencias  chi-cuadrado
table_oficina<-table(data2$default,data$oficina)
table_categoria<-table(data2$default,data$categori)
table_monto<-table(data2$default,data$monto)
table_saldo<-table(data2$default,data$saldo)
table_plazo<-table(data2$default,data$plazo)
table_tasa<-table(data2$default,data$tasa)
table_cuota<-table(data2$default,data$cuota)
table_garantia<-table(data2$default,data$garantia)
table_formpag<-table(data2$default,data$formapag)
table_edad<-table(data2$default,data$edad)
table_ocup<-table(data2$default,data$ocupació)
table_educ<-table(data2$default,data$niveledu)
table_est<-table(data2$default,data$estrato)
table_civil<-table(data2$default,data$estadoci)
table_sex<-table(data2$default,data$sexo)
table_tipocont<-table(data2$default,data$tipocont)
summary(table_oficina)
summary(table_categoria)
summary(table_monto)
summary(table_saldo)
summary(table_plazo)
summary(table_tasa)
summary(table_cuota)
summary(table_garantia)
summary(table_formpag)
summary(table_edad)
summary(table_ocup)
summary(table_educ)
summary(table_est)
summary(table_civil)
summary(table_sex)
summary(table_tipocont)



#Puesto que chi-cuadrado es una  prueba de hipotesis, nuestra 
#hipotesis nula sera que ambas variables son dependientes
#(no son independientes). As? pues,con un p menor a 0.05 se
#rechaza la hipotesis con una significancia del 5%.


data2$ofi<-data$oficina
data2$cate<-data$categori
data2$monto<-data$monto
data2$saldo<-data$saldo
data2$plazo<-data$plazo
data2$tasa<-data$tasa
data2$cuota<-data$cuota
data2$formpag<-data$formapag
data2$edad<-data$edad
data2$ocup<-data$ocupació
data2$educ<-data$niveledu
data2$civil<-data$estadoci
data2$sex<-data$sexo
data2$tipocont<-data$tipocont
data2$ingnet<-(data$ingtot)-(data$egrtot) #esta variable representa el ingreso
#neto del cliente, es decir: delo que dispone despues de cubrir sus "obligaciones"