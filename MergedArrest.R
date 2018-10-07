



#Assign USArrest dataset to a local variable 
Arrest <- USArrests
#Assign the rownames to a variable
stateName <- rownames(Arrest)
#Delete existing rownames column from dataset
rownames(Arrest) <- NULL
#add a new column to the dataframe
dfArrest <- cbind(stateName,Arrest)



dfMerged <- merge(dfArrest, census, by= "stateName")
str(dfMerged)
 
