data=read_xlsx('final_fix.xlsx')
data1=as.data.frame(data[,2:5])
View(data1)
row.names(data1) = c(1:nrow(data1))
row.names(data1)
n = dim(data1)[1]
n
# Statistika Deskriptif
summary(data1)
# Standarisasi Data
data2 <- scale(data1[,1:4])
View(data2)
head(data2)
# Uji Asumsi 
# # Sampel Representatif
library(REdaS)
KMOS(data2[,c(1,2,3,4)])
data2=data2[,c(1,2,3,4)]
library(factoextra)
fviz_nbclust(data2[,c(1,2,3,4)], hcut, method = "silhouette",
             k.max=6)
library(car)
korelasi <- cor(data2)
korelasi
corr.frame <- as.data.frame(korelasi)
corr.frame
corr.frame
# # Uji Non Multikolinearitas
datacor=round(cor(data2),4)
view(data2)
model = lm(data$kemiskinan~data$`presentase kendaraan`+data$Transportasi
           +data$`Luas daerah`)
vif(model)
