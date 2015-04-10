## Code for Coursera class "Getting and Cleaning Data"
## Quiz 3

## Question 1
## Create a logical vector that identifies the households on greater than 10 acres 
## who sold more than $10,000 worth of agriculture products. Assign that logical 
## vector to the variable agricultureLogical. Apply the which() function like this 
## to identify the rows of the data frame where the logical vector is TRUE. 
## which(agricultureLogical) What are the first 3 values that result?

## Load the data from the ACS source into variable ds
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv ",
              destfile = "./ACS.csv", method = "curl", quiet = TRUE)
ds <- read.csv("./ACS.csv")
##
## create agricultureLogical acres > 10 (ACR = 3) and products > $10k (AGS = 6)
agricultureLogical <- (!is.na(ds$ACR)) & (!is.na(ds$AGS)) & (ds$ACR == 3) & (ds$AGS == 6)
##
## Apply the which command as specified
which(agricultureLogical)


