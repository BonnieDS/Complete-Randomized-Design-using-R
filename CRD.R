#Load this package using the function library
library(readxl)
#Read the file from your files location as below.
CRD <- read_excel("C:/Users/Boss IT Solutions/OneDrive/CRD.xlsx", col_types = c("text", "numeric"))
#Display the data in the file CRD.xlsx
View(CRD)

#Fitting of linear model
model <-lm(CRD$Yield ~ CRD$Treatment)

#Obtains R Square and other statistics of fitted model
summary <-summary(model)
summary

#Carryout ANOVA
anova <-anova(model)
anova
