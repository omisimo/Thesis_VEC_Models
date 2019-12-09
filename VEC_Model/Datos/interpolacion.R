library(bookdown)
library(readxl)
library(ggplot2)
library(tidyverse)
library(plotly)
library(urca)
library(forecast)
library(lubridate)
library(vars)
library(ggpubr)
library(imputeTS)

series_db <- read_excel("Datos/Series Tesis Recolección.xlsx", sheet = "Gasto en Educación")
series_db

aux <- as.ts(series_db$Gasto_Educacion_PorcGDP)
statsNA(aux)

aux2 <- na.interp(aux)
View(aux2)
