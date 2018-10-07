
str(dfMerged)
 #Histogram of Population
 histPopulation <- ggplot(dfMerged, aes(x=population))
 histPopulation <- histPopulation + geom_histogram(binwidth = 5000000, color= "black", fill="white")
 histPopulation <- histPopulation + ggtitle("States population histogram")
 histPopulation
 
 
 #Histogram of Murder Rate
 MurderRate <- ggplot(dfMerged, aes(x=Murder))
 MurderRate <- MurderRate + geom_histogram(binwidth = 2.5, color= "black", fill="white")
 MurderRate <- MurderRate + ggtitle("States Murderrate Histogram")
 MurderRate
 
 
 #Histogram of Assault Rate
 AssaultRate <- ggplot(dfMerged, aes(x=Assault))
 AssaultRate <- AssaultRate + geom_histogram(binwidth = 50, color= "black", fill="white")
 AssaultRate <- AssaultRate + ggtitle("States Assault Rate Histogram")
 AssaultRate
 
 #Histogram of Urban Population
 UrbanPop <- ggplot(dfMerged, aes(x=UrbanPop))
 UrbanPop <- UrbanPop + geom_histogram(binwidth = 15, color= "black", fill="white")
 UrbanPop <- UrbanPop + ggtitle("Urban Population Histogram")
 UrbanPop
 
 
 #Histogram of Rape
 Rape  <- ggplot(dfMerged, aes(x=Rape))
 Rape <- Rape + geom_histogram(binwidth = 10, color= "black", fill="white")
 Rape <- Rape + ggtitle("Urban Population Histogram")
 Rape
 
