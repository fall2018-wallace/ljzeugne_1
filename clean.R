
clean_data <- raw_data

#re-use the code from berfore

readStates <- function(states)
{
    states<- states [-1,]
    
    num.row <- nrow(states)
    
    states <- states[-num.row,]
    
    states <- states[,-1:-4]

    
    
    
    
}
