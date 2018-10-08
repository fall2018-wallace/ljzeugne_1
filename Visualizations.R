
library(ggplot2)
str(dfMerged)

 #Histogram of Population
 histPopulation <- ggplot(dfMerged, aes(x=population))
 histPopulation <- histPopulation + geom_histogram(binwidth = 5000000, color= "black", fill="red")
 histPopulation <- histPopulation + ggtitle("Population of States in the United States")
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
 boxPopulaton <- ggplot(dfMerged, aes(x=factor(0), population)) 
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
 
 #Step C
 #Calculate the number of murder per state
 AdjPopulation <- dfMerged$population/100000
 MurderPerState <- AdjPopulation * dfMerged$Murder
 dfMerged$MurderPerState <- MurderPerState
 states <- dfMerged$StateName
 names(MurderPerState) <- states
 MurderPerState
 
 #Bar Chart with the number of Murder per State
 
 BarMurderPerState1 <- ggplot(dfMerged, aes(x=reorder(stateName, MurderPerState), y=MurderPerState, group = 1 ))
 BarMurderPerState1 <- BarMurderPerState1 + geom_col()
 BarMurderPerState1 <- BarMurderPerState1 + theme(axis.text.x = element_text(angle =270, hjust = 1))
 BarMurderPerState1 <- BarMurderPerState1 + ggtitle('Total Murders per State')
 BarMurderPerState1
 
 
 BarMurderPerState2 <- ggplot(dfMerged, aes(x=reorder(stateName, MurderPerState), y=MurderPerState, group = 1 ))
 BarMurderPerState2 <- BarMurderPerState2 + geom_col()
 BarMurderPerState2 <- BarMurderPerState2 + theme(axis.text.x = element_text(angle =90, hjust = 1))
 BarMurderPerState2 <- BarMurderPerState2 + ggtitle('Total Murders per State')
 BarMurderPerState2
 
 BarMurderPerState3 <- ggplot(dfMerged, aes(x=reorder(stateName, Murder), y=MurderPerState, group = 1 ))
 BarMurderPerState3 <- BarMurderPerState3 + geom_col()
 BarMurderPerState3 <- BarMurderPerState3 + theme(axis.text.x = element_text(angle =90, hjust = 1))
 BarMurderPerState3 <- BarMurderPerState3 + ggtitle('Total Murders per State')
 BarMurderPerState3
 
 BarMurderPerState4 <- ggplot(dfMerged, aes(x=reorder(stateName, MurderPerState), y=MurderPerState, fill = percentOver18 ))
 BarMurderPerState4 <- BarMurderPerState4 + geom_col()
 BarMurderPerState4 <- BarMurderPerState4 + theme(axis.text.x = element_text(angle =90, hjust = 1))
 BarMurderPerState4 <- BarMurderPerState4 + ggtitle('Total Murders per State')
 BarMurderPerState4
 
 #Step D: Generate a Scatterplot with population on the x-axis, percenover18 on the y axis and siz and color represent the murderrate
 Scatter <- ggplot(dfMerged, aes(x=population, y = percentOver18))
 Scatter <- Scatter + geom_point(aes(size = Murder, color = Murder))
 Scatter
 
