#Imports data from specified directory with specified id

importdata <- function (directory, id = 1:332) {
        data <- data.frame()
        
        for (i in id) {
                newdata <- read.csv(sprintf(paste(directory,"/%03d.csv",sep = '', collapse = ''),i))
                data <- rbind(data,newdata)
        }
        return(data)
}

#Calculates mean of specified pollutant across specified monitors given id of monitor and directory of saved data

pollutantmean <- function (directory, pollutant, id = 1:332) {
        data <- importdata(directory,id)
        mean(na.omit(data[[pollutant]]))
}