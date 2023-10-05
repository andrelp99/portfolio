### librerie 

library(readr)
library(forecast)
library(dplyr)
library(ggplot2)
library(tseries)
library(xts)
library(TSstudio)


### caricamento dati


# Setting working directory
working_dir = "C:/Users/andre/OneDrive/Documenti/unimib/magistrale/primo anno/Data Science Lab/prog/"
setwd(working_dir)

data_r1<- read.csv("dati/rist1_def.csv", header = TRUE)
data_r2<- read.csv("dati/rist2_def.csv", header = TRUE)
data_r3<- read.csv("dati/rist3_def.csv", header = TRUE)
data_r4<- read.csv("dati/rist4_def.csv", header = TRUE)
data_r5<- read.csv("dati/rist5_def.csv", header = TRUE)
data_r6<- read.csv("dati/rist6_def.csv", header = TRUE)


str(data_r1)
str(data_r2)
str(data_r3)
str(data_r4)
str(data_r5)
str(data_r6)






### distinzioni precovid/postcovid

data_precovid_r1 = data_r1 %>% filter(Data < "2020-02-21")
data_postcovid_r1 = data_r1 %>% filter(Data > "2020-02-20")

data_precovid_r2 = data_r2 %>% filter(Data < "2020-02-21")
data_postcovid_r2 = data_r2 %>% filter(Data > "2020-02-20")

data_precovid_r3 = data_r3 %>% filter(Data < "2020-02-21")
data_postcovid_r3 = data_r3 %>% filter(Data > "2020-02-20")

data_precovid_r4 = data_r4 %>% filter(Data < "2020-02-21")
data_postcovid_r4 = data_r4 %>% filter(Data > "2020-02-20")

data_precovid_r5 = data_r5 %>% filter(Data < "2020-02-21")
data_postcovid_r5 = data_r5 %>% filter(Data > "2020-02-20")

data_precovid_r6 = data_r6 %>% filter(Data < "2020-02-21")
data_postcovid_r6 = data_r6 %>% filter(Data > "2020-02-20")




### Pre Covid

# trasformazione in serie storica

vendite_precovid_r1 <- data_precovid_r1[,7]
vendite_precovid_r1 <- msts(vendite_precovid_r1, seasonal.periods=c(7,365.25), ts.frequency = 365, start = decimal_date(ymd("2018-09-01"))) 

vendite_precovid_r2 <- data_precovid_r2[,7]
vendite_precovid_r2 <- msts(vendite_precovid_r2, seasonal.periods=c(7,365.25), ts.frequency = 365, start = decimal_date(ymd("2018-09-01"))) 

vendite_precovid_r3 <- data_precovid_r3[,7]
vendite_precovid_r3 <- msts(vendite_precovid_r3, seasonal.periods=c(7,365.25), ts.frequency = 365, start = decimal_date(ymd("2019-11-15"))) 

vendite_precovid_r4 <- data_precovid_r4[,7]
vendite_precovid_r4 <- msts(vendite_precovid_r4, seasonal.periods=c(7,365.25), ts.frequency = 365, start = decimal_date(ymd("2018-09-01"))) 

vendite_precovid_r5 <- data_precovid_r5[,7]
vendite_precovid_r5 <- msts(vendite_precovid_r5, seasonal.periods=c(7,365.25), ts.frequency = 365, start = decimal_date(ymd("2018-09-01"))) 

vendite_precovid_r6 <- data_precovid_r6[,7]
vendite_precovid_r6 <- msts(vendite_precovid_r6, seasonal.periods=c(7,365.25), ts.frequency = 365, start = decimal_date(ymd("2018-09-01"))) 

# Con msts per tenere conto di stagionalità annuale e stagionalità settimanale con frequenza della serie storica a 7 giorni

# grafici serie temporali iniziali


autoplot(vendite_precovid_r1, ylab="Vendite", xlab="Tempo")
autoplot(vendite_precovid_r2, ylab="Vendite", xlab="Tempo")
autoplot(vendite_precovid_r3, ylab="Vendite", xlab="Tempo")
autoplot(vendite_precovid_r4, ylab="Vendite", xlab="Tempo")
autoplot(vendite_precovid_r5, ylab="Vendite", xlab="Tempo")
autoplot(vendite_precovid_r6, ylab="Vendite", xlab="Tempo")

# differenziazione

vendite_precovid_r1_diff7 <- diff(vendite_precovid_r1,7)
vendite_precovid_r2_diff7 <- diff(vendite_precovid_r2,7)
vendite_precovid_r3_diff7 <- diff(vendite_precovid_r3,7)
vendite_precovid_r4_diff7 <- diff(vendite_precovid_r4,7)
vendite_precovid_r5_diff7 <- diff(vendite_precovid_r5,7)
vendite_precovid_r6_diff7 <- diff(vendite_precovid_r6,7)


autoplot(vendite_precovid_r1_diff7)
autoplot(vendite_precovid_r2_diff7)
autoplot(vendite_precovid_r3_diff7)
autoplot(vendite_precovid_r4_diff7)
autoplot(vendite_precovid_r5_diff7)
autoplot(vendite_precovid_r6_diff7)

# BoxCox
#  trasformazione di BoxCox per risolvere non stazionarietà?

BoxCox.lambda(data_precovid_r1[,7])
BoxCox.lambda(data_precovid_r2[,7])
BoxCox.lambda(data_precovid_r3[,7])
BoxCox.lambda(data_precovid_r4[,7])
BoxCox.lambda(data_precovid_r5[,7])
BoxCox.lambda(data_precovid_r6[,7])

# trasformazione inversa quadratica per il ristorante 1
# trasformazione quadratica per i ristoranti 3 e 4

vendite_precovid_r1_lambda <- (1/sqrt(vendite_precovid_r1))
autoplot(vendite_precovid_r1_lambda)
vendite_precovid_r1_lambda_diff7 <- diff(vendite_precovid_r1_lambda,7)
autoplot(vendite_precovid_r1_lambda_diff7)
tsdisplay(vendite_precovid_r1_lambda_diff7)



vendite_precovid_r3_lambda <- ((vendite_precovid_r3)^2)
autoplot(vendite_precovid_r3_lambda)
vendite_precovid_r3_lambda_diff7 <- diff(vendite_precovid_r3_lambda,7)
autoplot(vendite_precovid_r3_lambda_diff7)
tsdisplay(vendite_precovid_r3_lambda_diff7)



vendite_precovid_r4_lambda <- ((vendite_precovid_r4)^2)
autoplot(vendite_precovid_r4_lambda)
vendite_precovid_r4_lambda_diff7 <- diff(vendite_precovid_r4_lambda,7)
autoplot(vendite_precovid_r4_lambda_diff7)
tsdisplay(vendite_precovid_r4_lambda_diff7)


### creazione modelli ARIMA

mod1_auto <- auto.arima(vendite_precovid_r1, lambda = "auto", stepwise = FALSE, approximation = FALSE)
mod2_auto <- auto.arima(vendite_precovid_r2, lambda = "auto", stepwise = FALSE, approximation = FALSE)
mod3_auto <- auto.arima(vendite_precovid_r3, lambda = "auto", stepwise = FALSE, approximation = FALSE)
mod4_auto <- auto.arima(vendite_precovid_r4, lambda = "auto", stepwise = FALSE, approximation = FALSE)
mod5_auto <- auto.arima(vendite_precovid_r5, lambda = "auto", stepwise = FALSE, approximation = FALSE)
mod6_auto <- auto.arima(vendite_precovid_r6, lambda = "auto", stepwise = FALSE, approximation = FALSE)


# summary modelli

summary(mod1_auto)
tsdisplay(mod1_auto$residuals) 

summary(mod2_auto)
tsdisplay(mod2_auto$residuals) 

summary(mod3_auto)
tsdisplay(mod3_auto$residuals) 

summary(mod4_auto)
tsdisplay(mod4_auto$residuals) 

summary(mod5_auto)
tsdisplay(mod5_auto$residuals) 

summary(mod6_auto)
tsdisplay(mod6_auto$residuals) 


# previsioni

pred_mod1 <- forecast(mod1_auto, h = 60, level = 95)
autoplot(pred_mod1)

pred_mod2 <- forecast(mod2_auto, h = 60, level = 95)
autoplot(pred_mod2)

pred_mod3 <- forecast(mod3_auto, h = 60, level = 95)
autoplot(pred_mod3)

pred_mod4 <- forecast(mod4_auto, h = 60, level = 95)
autoplot(pred_mod4)

pred_mod5 <- forecast(mod5_auto, h = 60, level = 95)
autoplot(pred_mod5)

pred_mod6 <- forecast(mod6_auto, h = 60, level = 95)
autoplot(pred_mod6)




