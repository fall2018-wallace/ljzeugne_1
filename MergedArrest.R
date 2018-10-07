
#Assign USArrest dataset to a local variable 
Arrest <- USArrests

#Assign the rownames to a variable
StateName <- rownames(Arrest)
#Delete existing rownames column from dataset
rownames(Arrest) <- NULL
#add a new column to the dataframe
dfArrest <- cbind(StateName,Arrest)

dfMerged <- merge(dfArrest, dfcensusData, by= "StateName")
 
 str(dfMerged)



