

#Assign the rownames to a variable
StateName <- rownames(Arrest)
#Delete existing rownames column from dataset
rownames(Arrest) <- NULL
#add a new column to the dataframe
dfArrest <- cbind(StateName,Arrest)

#Merge the USarrest dataset with census data by StateeName
dfMerged <- merge(dfArrest, census, by= "StateName")
 
str(dfMerged)


#Assign USArrest dataset to a local variable 
Arrest <- USArrests
#Assign the rownames to a variable
StateName <- rownames(Arrest)
rownames(Arrest) <- NULL
dfArrest <- cbind(StateName,Arrest)
View(newdf)


str(dfcensusData)

 dfMerged <- merge(dfArrest, dfcensusData, by= "StateName")
 
 View(dfMerged)
