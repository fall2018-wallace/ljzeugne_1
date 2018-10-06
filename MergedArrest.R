
#assign USArrest dataset into local variable
dfArrest <- USArrests

#Change the columnname of the USArrest to "stateName"

str(dfArrest)

names(USArrest[1]) <- "stateName"
