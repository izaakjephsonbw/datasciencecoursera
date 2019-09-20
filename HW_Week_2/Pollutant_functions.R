#Imports data from specified directory with specified id

importdata <- function (directory, id = 1:332) {
        data <- data.frame()
        
        for (i in id) {
                newdata <- read.csv(paste("HW_Week_2/",directory,"/",sprintf("%03d.csv",i),sep = '', collapse = ''))
                data <- rbind(data,newdata)
        }
        return(data)
}

#Calculates mean of specified pollutant across specified monitors given id of monitor and directory of saved data

pollutantmean <- function (directory, pollutant, id = 1:332) {
        data <- importdata(directory,id)
        mean(na.omit(data[[pollutant]]))
}
