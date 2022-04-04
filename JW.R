# Assignment: ASSIGNMENT 3 (#2)
# Name: Wisniewski, Justin
# Date: 2022-04-03

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/jwiz3/Desktop/Data Statistics/dsc520")

## Load the `data/acs-14-1yr-s0201.csv` to
acs_df <- read.csv("data/acs-14-1yr-s0201.csv")

## Elements in data (including categories and data type)
str(acs_df)

## Number of rows in data
nrow(acs_df)

## Number of columns in data
ncol(acs_df)

## Create a Histogram of the HSDegree variable using the ggplot2 package
ggplot(acs_df, aes(HSDegree)) + geom_histogram()

## Set a bin size for the Histogram
ggplot(acs_df, aes(HSDegree)) + geom_histogram(bins=20)

## Title and appropriate X/Y axis labels on Histogram Plot
ggplot(acs_df, aes(HSDegree)) + geom_histogram(bins=20) + ggtitle("2014 ACS Educational Attainment") + xlab("HS Degree %") + ylab("Count")

## Questions
## Data distribution is unimodal
## Not symmetrical
## Not bell-shaped
## Not normal
## Left-skewed


## Convert y-axis to probabilities
ggplot(acs_df, aes(HSDegree)) + geom_histogram(aes(y = ..density..))

## Add normal density curve to Histogram
ggplot(acs_df, aes(HSDegree)) + geom_histogram(aes(y = ..density..)) +
  geom_density(alpha=.2, fill="#FF6666")

## A normal distribution can not accurately be used as a model for this data due to the distribution being skewed to the left

## Create a Probability Plot of the HSDegree variable
ggplot(acs_df, aes(HSDegree)) + geom_density()

## Distribution is not normal based off of probability plot
## It is skewed and not able to be split with vertical line
## It is skewed to the left, mode closer to the right
## Quantify normality with numbers using the stat.desc() function
install.packages ("pastecs")
library (pastecs)
stat.desc(acs_df)

## Change in sample size might give us lower HSDegree values that will then make the distribution more normal