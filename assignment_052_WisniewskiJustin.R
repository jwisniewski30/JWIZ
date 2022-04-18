# Assignment: ASSIGNMENT 5.2
# Name: Wisniewski, Justin
# Date: 2022-04-17

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/jwiz3/Desktop/Data Statistics/dsc520")

## Load readxl library
library("readxl")

## Load the file `data/week-7-housing.xlsx` to `housing_df` using `read_excel`
read_excel("data/week-7-housing.xlsx")
housing_df <- read_excel("data/week-7-housing.xlsx")

## Install and load dplyr
install.packages("dplyr")
library(dplyr)

## Use the 6 different operations to analyze/transform the data
## GroupBy, Summarize, Mutate, Filter, Select, and Arrange

## GroupBy and Summarize
summarise_at(group_by(housing_df,zip5),vars('Sale Price'),funs(mean(.,na.rm=TRUE)))

## Mutate
housing_new <- mutate(housing_df, adjusted_sqft = square_feet_total_living * 1.15)
print(housing_new)

## Filter
four_bedrooms <- filter(housing_df, bedrooms == "4")
three_bedrooms <- filter(housing_df, bedrooms == "3")

## Select
date_price_addr <- housing_df %>% select('Sale Date', 'Sale Price', 'addr_full')

## Arrange
lon_lat <- arrange(housing_df, lon, lat)

## Install and load Purrr
install.packages("purrr")
library(purrr)

## Keep
sq_ft_totalliving <- housing_df$'square_feet_total_living'
Sale_Prices <- housing_df$`Sale Price`
keep(Sale_Prices,function(x) (x) > 4000000)

## Discard
Sale_Prices <- housing_df$`Sale Price`
discard(Sale_Prices,function(x) (x) > 4000000)

## Use cbind function on dataset to combine prices and sq ft total living
prices_living <- cbind(Sale_Prices,sq_ft_totalliving)

## Use rbind function on dataset to combine three and four bedrooms
three_four <- rbind(three_bedrooms,four_bedrooms)

## Given string
split_string <- "This is an example on how to split a string"

## Using strsplit() method
answer <- strsplit(split_string," ")
print(answer)

## Concatenate the results back together
paste(answer, sep = " ", collapse = NULL)