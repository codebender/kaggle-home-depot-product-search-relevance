library(readr)
library(tidyr)
library(dplyr)

print("Reading data")

train <- read_csv('../input/train.csv')
test <- read_csv('../input/test.csv')
descriptions <- read_csv('../input/product_descriptions.csv')
attrs <- read_csv('../input/attributes.csv')

attrs <- spread(attrs, name, value, fill = NA, convert = TRUE)

train <- merge(train, descriptions)
train <- merge(train, attrs)

test <- merge(test, descriptions)
test <- merge(test, attrs)
