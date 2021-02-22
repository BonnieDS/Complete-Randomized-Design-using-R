 # Complete-Randomized-Design-using-R
-Simplest design to use.
-Design can be used when experimental units are essentially homogeneous. 
-Because of the homogeneity requirement, it may be difficult to use this design for field experiments. 
-The CRD is best suited for experiments with a small number of treatments.

Randomization Procedure
-Treatments are assigned to experimental units completely at random.
-Every experimental unit has the same probability of receiving any treatment.
-Randomization is performed using a random number table, computer, program, etc. 


# R-script
Below is a step by step guide on how to obtain CRD Analysis using R

# Importing Data Set to R, the data set is annexed in the files here as CRD.xlsx(check out and download)
library(readxl)

CRD <- read_excel("C:/Users/Boss IT Solutions/OneDrive/CRD.xlsx", col_types = c("text", "numeric"))

View(CRD)
# Fitting of linear model
model <-lm(CRD$Yield ~ CRD$Treatment)

# Obtains R Square and other statistics of fitted model
summary <-summary(model)

# Carryout ANOVA
anova <-anova(model)
anova

# This is a Simple way of obtaining CRD Analysis
