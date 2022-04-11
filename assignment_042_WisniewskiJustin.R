# Assignment: ASSIGNMENT 4.2.2
# Name: Wisniewski, Justin
# Date: 2022-04-10

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/jwiz3/Desktop/Data Statistics/dsc520")

## Load readxl library
library("readxl")

## Load the file `data/week-7-housing.xlsx` to `housing_df1` using `read_excel`
read_excel("data/week-7-housing.xlsx")
housing_df <- read_excel("data/week-7-housing.xlsx")

## Dataframe for total bathrooms
bb_df <- housing_df[,c(16:18)]

## Dataframe for sale price
sp_df <- housing_df[,c(2)]

## Use the apply function on a variable in your dataset
apply(bb_df, 2, sum)
apply(sp_df, 2, sum)

## Use the aggregate function on a variable in your dataset
aggregate(square_feet_total_living ~ bedrooms, housing_df, mean)

## Load plyr library
library("plyr")

## Average square feet total living space by year built using ddply
ddply(housing_df,"year_built",function(x) mean(x$square_feet_total_living))

## Multiple outliers due to 0 bedroom listings in data


## Create at least two new variables
housing_df$pricepersqfoot <- housing_df$`Sale Price` / housing_df$square_feet_total_living
housing_df$totaltoilets <- housing_df$bath_full_count + housing_df$bath_half_count
