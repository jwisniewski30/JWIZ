# Assignment: ASSIGNMENT 4.2
# Name: Wisniewski, Justin
# Date: 2022-04-09

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/jwiz3/Desktop/Data Statistics/dsc520")

## Load the `scores.csv`
scores_df <- read.csv("data/scores.csv")
str(scores_df)
summary(scores_df)
head(scores_df)

## The observational units in this study is the student performance in the course

## The categorical variable is the section
## The quantitative variables are the total points earned in the course and count

## Create one variable to hold a subset of your data set that contains only the Regular Section and one variable for the Sports Section
S=subset(scores_df,Section=="Sports")
head(S)
R=subset(scores_df,Section=="Regular")
head(R)

Score1=S[,2]
Score2=R[,2]
par(mfrow=c(2,1))
plot(Score1, xlab="number of students", ylab="Score", main="Sports")
plot(Score2, xlab="number of students", ylab="Score", main="Regular")

## The scale of the scores for Regular section start greater than the Sports section
## Although Sports had highest score, it appears Regular had a higher average
## Summary for Sports and Regular
summary(S)
summary(R)

## No, when looking at the mean of both sections, regular scored higher on average, but sports had the highest score.

## The course of study, grade level, tutor yes/no


