#Load Packages
library(MASS)
library(tidyverse)
library(earth)
library(caret)
library(readxl)
library(car)
library(lmtest)
library(dplyr)
library(ggplot2)

#Import Data
Datakemiskinan <- read_excel("F:/AA.STATISTIKAZONE/8 MARS Rstudio/kemiskinan.xlsx")
print(Datakemiskinan)

#Membuat diagram pencar antara variabel X dengan Y
plot(x=Datakemiskinan$TPT, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - TPT",
     xlab="TPT",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$TPAK, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - TPAK",
     xlab="TPAK",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$AHH_PR, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - AHH PR",
     xlab="AHH PR",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$RLS, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - RLS",
     xlab="RLS",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$HLS, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - HLS",
     xlab="HLS",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$PE, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - PE",
     xlab="PE",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$GINI, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - GINI",
     xlab="GINI",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$SANITASI_LAYAK, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - SANITASI LAYAK",
     xlab="SANITASI LAYAK",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$AIR_MINUM_LAYAK, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - AIR MINUM LAYAK",
     xlab="AIR MINUM LAYAK",ylab="Persentase kemiskinan",
     pch=16, col="blue")

plot(x=Datakemiskinan$ABH, y=Datakemiskinan$P0,
     main="Plot persentase kemiskinan - ABH",
     xlab="ABH",ylab="Persentase kemiskinan",
     pch=16, col="blue")

#Deskriptif statistik
summary(Datakemiskinan)

#pendekatan non multikolinearitas
modelreg <- lm(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
               data=Datakemiskinan)
summary(modelreg)
car::vif(modelreg)

# Pemilihan kombinasi MI, BF, MO
# 1. Untuk BF 40
K3_20_0 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 20, minspan = 0)
K3_20_1 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 20, minspan = 1)
K3_20_2 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 20, minspan = 2)
K3_20_3 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 20, minspan = 3)
summary(K3_20_0)
summary(K3_20_1)
summary(K3_20_2)
summary(K3_20_3)

MI_20 <- c(3,3,3,3)  
BF_20 <- c(20, 20, 20, 20)  
MO_20 <- c(0, 1, 2, 3) 
GCV_20 <- c(K3_20_0$gcv, K3_20_1$gcv, K3_20_2$gcv, K3_20_3$gcv)

# Membuat data frame
list_gcv <- data.frame(MI_20, BF_20, MO_20, GCV_20)
print(list_gcv)

# 2. Untuk BF 30
K3_30_0 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 30, minspan = 0)
K3_30_1 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 30, minspan = 1)
K3_30_2 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 30, minspan = 2)
K3_30_3 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 30, minspan = 3)

summary(K3_30_0)
summary(K3_30_1)
summary(K3_30_2)
summary(K3_30_3)

MI_30 <- c(3,3,3,3)  
BF_30 <- c(30, 30, 30, 30)  
MO_30 <- c(0, 1, 2, 3) 
GCV_30 <- c(K3_30_0$gcv, K3_30_1$gcv, K3_30_2$gcv, K3_30_3$gcv)

# Membuat data frame
list_gcv <- data.frame(MI_30, BF_30, MO_30, GCV_30)
print(list_gcv)

#3. Untuk BF 40
K3_40_0 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 40, minspan = 0)
K3_40_1 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 40, minspan = 1)
K3_40_2 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 40, minspan = 2)
K3_40_3 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                 data = Datakemiskinan,
                 degree = 3, nprune = 40, minspan = 3)
summary(K3_40_0)
summary(K3_40_1)
summary(K3_40_2)
summary(K3_40_3)

MI_40 <- c(3,3,3,3)  
BF_40 <- c(40, 40, 40, 40)  
MO_40 <- c(0, 1, 2, 3) 
GCV_40 <- c(K3_40_0$gcv, K3_40_1$gcv, K3_40_2$gcv, K3_40_3$gcv)

# Membuat data frame
list_gcv <- data.frame(MI_40, BF_40, MO_40, GCV_40)
print(list_gcv)

# pengecekan RMSE terkecil karena ada GCV yang sama
rmse <- function(actual, predicted) {
  sqrt(mean((actual - predicted)^2))
}

predictions_K2_20_3 <- predict(K2_20_3, newdata = Datakemiskinan)
rmse_K2_20_3 <- rmse(Datakemiskinan$P0, predictions_K2_20_3)
print(paste("RMSE for K2_20_3:", rmse_K2_20_3))

predictions_K3_20_3 <- predict(K3_20_3, newdata = Datakemiskinan)
rmse_K3_20_3 <- rmse(Datakemiskinan$P0, predictions_K3_20_3)
print(paste("RMSE for K3_20_3:", rmse_K3_20_3))

predictions_K2_30_3 <- predict(K2_30_3, newdata = Datakemiskinan)
rmse_K2_30_3 <- rmse(Datakemiskinan$P0, predictions_K2_30_3)
print(paste("RMSE for K2_30_3:", rmse_K2_30_3))

predictions_K3_30_3 <- predict(K3_30_3, newdata = Datakemiskinan)
rmse_K3_30_3 <- rmse(Datakemiskinan$P0, predictions_K3_30_3)
print(paste("RMSE for K3_30_3:", rmse_K3_30_3))

predictions_K2_40_3 <- predict(K2_40_3, newdata = Datakemiskinan)
rmse_K2_40_3 <- rmse(Datakemiskinan$P0, predictions_K2_40_3)
print(paste("RMSE for K2_40_3:", rmse_K2_40_3))

predictions_K3_40_3 <- predict(K3_40_3, newdata = Datakemiskinan)
rmse_K3_40_3 <- rmse(Datakemiskinan$P0, predictions_K3_40_3)
print(paste("RMSE for K3_40_3:", rmse_K3_40_3))

# mengukur tingkat kepentingan variabel independen berdasarkan model yg terpilih
importance_K2_20_3 <- evimp(K2_20_3)
print(importance_K2_20_3)

# Model penduga
modelkemiskinan1 <- earth(P0 ~ TPT + TPAK + AHH_PR + RLS + HLS + PE + GINI + SANITASI_LAYAK + AIR_MINUM_LAYAK + ABH,
                          data = Datakemiskinan,
                          degree=2, nprune=20, minspan=3)
summary(modelkemiskinan1, style="bf")


#Pengujian Normalitas
res <- residuals(modelkemiskinan1)
shapiro_test_result <- shapiro.test(res)
print(shapiro_test_result)

#Pengujian heteroskedastisitas
bptest(modelkemiskinan1)

#uji independen durbin watson
dw_test_result <- dwtest(modelkemiskinan1)
print(dw_test_result)

#karena terjadi autokorelasi, kita coba transformasi
log_y <- log(Datakemiskinan$P0)
log_X1 <- log(Datakemiskinan$TPT)
log_X2 <- log(Datakemiskinan$TPAK)
log_X3 <- log(Datakemiskinan$AHH_PR)
log_X4 <- log(Datakemiskinan$RLS)
log_X5 <- log(Datakemiskinan$HLS)
log_X6 <- log(Datakemiskinan$PE)
log_X7 <- log(Datakemiskinan$GINI)
log_X8 <- log(Datakemiskinan$SANITASI_LAYAK)
log_X9 <- log(Datakemiskinan$AIR_MINUM_LAYAK)
log_X10 <- log(Datakemiskinan$ABH)

#membuat model baru untuk uji autokorelasi
modelkemiskinan2 <- earth(log_y ~ log_X1 + log_X2 + log_X3 + log_X4 + log_X5 + log_X6 + log_X7 + log_X8 + log_X8 + log_X9 +log_X10,
                          data = Datakemiskinan,
                          degree=2, nprune=12, minspan=3)
summary(modelkemiskinan1, style="bf")

dw_test_result <- dwtest(modelkemiskinan2)
print(dw_test_result)

#Uji signifikansi fungi basis
matriks <- model.matrix(modelkemiskinan1)
uji_parameter <- lm(Datakemiskinan$P0 ~ matriks[,-1])
summary(uji_parameter)