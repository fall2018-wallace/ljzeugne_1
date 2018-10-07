
str(dfMerged)
 #Histogram of Population
 histPopulation <- ggplot(dfMerged, aes(x=Population))
 histPopulation <- histPopulation + geom_histogram(binwidth = 5000000, color= "black", fill="white")
 histPopulation <- histPopulation + ggtitle("States population histogram")
 histPopulation
