
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
 
 #Histogram Comment: In order to display the different histograms it is imperative to change the binwidth as otherwise all of the data are 
 #dispayed in only one bin, given that the bin width of the population is extraordinary big.
 
 
 #Boxplot for the population
 boxPopulaton <- ggplot(dfMerged, aes(x=factor(0), Population)) 
 boxPopulaton <- boxPopulaton + geom_boxplot()
 boxPopulaton <- boxPopulaton + ggtitle('Population')
 boxPopulaton
 
 
 #Boxplot for Murder rate
 boxMurderRate <- ggplot(dfMerged, aes(x=factor(0), Murder)) 
 boxMurderRate <- boxMurderRate + geom_boxplot()
 boxMurderRate <- boxMurderRate + ggtitle('Murder Rate')
 boxMurderRate
 
 
 #While I think a box plot is an extremely powerful visualization, I believe that it is harder to understand
 #for people not familiar with descripitive statistics. Therefore, the histogram appears to be the better solution in this case.
 #However, the boxplot shares probably more insightful information than the histogram. 
 
