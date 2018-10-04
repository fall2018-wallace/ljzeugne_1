
#re-use the code from before

readStates <-function(states)
{
#remove rows that are not needed
    states<- states[-1,]
#last row is Puerto Rico and not needed
    num.row <- nrow(states)
    
    states <- states[-num.row,]
    
    states <- states[,-1:-4]
    
    return(states)
    }

cleanCensus <- readStates(raw_data)
str(cleanCensus)
