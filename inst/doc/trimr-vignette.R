## ------------------------------------------------------------------------
# load the trimr package
library(trimr)

# activate the data
data(exampleData)

# look at the top of the data
head(exampleData)

## ------------------------------------------------------------------------
# perform the trimming
trimmedData <- absoluteRT(data = exampleData, minRT = 150, maxRT = 2000, 
                          digits = 0)

# look at the top of the data
head(trimmedData)

## ------------------------------------------------------------------------
# perform the trimming
trimmedData <- absoluteRT(data = exampleData, minRT = 150, maxRT = 2000, 
                          returnType = "raw", digits = 0)

# look at the top of the data
head(trimmedData)

## ------------------------------------------------------------------------
# trim the data
trimmedData <- sdTrim(data = exampleData, minRT = 150, sd = 3, 
                      perCondition = FALSE, perParticipant = TRUE, 
                      returnType = "mean", digits = 0)

# look at the top of the data
head(trimmedData)

## ------------------------------------------------------------------------
# trim the data
trimmedData <- sdTrim(data = exampleData, minRT = 150, sd = 3, 
                      perCondition = TRUE, perParticipant = TRUE, 
                      returnType = "mean", digits = 0)

# look at the top of the data
head(trimmedData)

## ------------------------------------------------------------------------
# load the data
data(linearInterpolation)

# show the first 20 rows (there are 100 in total)
linearInterpolation[1:20, ]

## ------------------------------------------------------------------------
# trim the data
trimmedData <- nonRecursive(data = exampleData, minRT = 150, digits = 0)

# see the top of the data
head(trimmedData)

## ------------------------------------------------------------------------
# trim the data
trimmedData <- modifiedRecursive(data = exampleData, minRT = 150, digits = 0)

# see the top of the data
head(trimmedData)

## ------------------------------------------------------------------------
# trim the data
trimmedData <- hybridRecursive(data = exampleData, minRT = 150, digits = 0)

# see the top of the data
head(trimmedData)

