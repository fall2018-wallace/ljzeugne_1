
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
