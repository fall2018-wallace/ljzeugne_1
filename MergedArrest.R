
#Assign USArrest dataset to a local variable 
Arrest <- USArrests

#Assign the rownames to a variable
StateName <- rownames(Arrest)
#Delete existing rownames column from dataset
rownames(Arrest) <- NULL
dfArrest <- cbind(StateName,Arrest)
View(newdf)


str(dfcensusData)

merge(dfArrest, dfcensusData, by= "StateName")

