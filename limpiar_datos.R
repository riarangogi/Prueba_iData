library(readxl)

data_raw<-read_excel('Cartera_Consumo.xlsx')
n_raw<-length(data_raw$cedula)
head(data_raw)
str(data_raw) 


##buscar datos anomalos o valores perdidos
table(data_raw$oficina)
table(data_raw$categori)
table(data_raw$garantia)
table(data_raw$formapag)
table(data_raw$reestruc)
table(data_raw$ocupació) #estudiante aparece 3 veces
table(data_raw$niveledu) #postgrado aparece 6
table(data_raw$estrato)
table(data_raw$estadoci) #eclesiástico aparece 10
table(data_raw$sexo)
table(data_raw$personas) # 7 aparece 7 y 8,25 aparece 1
table(data_raw$tipovivi)
table(data_raw$tipocont) #null hace referencia a  que  no tiene
table(data_raw$numerocr) #8,9,10,11,12 15 aparecen 10 o menos
table(data_raw$antigcoo)
table(data_raw$default)
table(data_raw$Cat)

##ver si hay NA
data_raw_na<-complete.cases(data_raw)
table(data_raw_na) #no hay na

##eliminar datos anomalos