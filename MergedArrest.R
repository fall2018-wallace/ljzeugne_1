
#Assign USArrest dataset to a local variable 
Arrest <- USArrests

StateName <- rownames(Arrest)
rownames(Arrest) <- NULL
dfArrest <- cbind(StateName,Arrest)
View(newdf)


str(dfcensusData)

merge(dfArrest, dfcensusData, by= "StateName")

