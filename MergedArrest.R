
#assign USArrest dataset into local variable
dfArrest <- USArrests

#Change the columnname of the USArrest to "stateName"
colnames(dfArrest) <- "stateName"
str(dfArrest)
str(census)



statenames <- rownames(dfArrest)


