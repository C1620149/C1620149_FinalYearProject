# Load cleaned data
load("/cloud/project/Analyses/Data/DataC.Rdata")
# Raw online and offline data was cleaned and combined using Excel
# See "Data/Offline Raw Data.csv" and "Data/Online Raw Data.csv" for raw data
# See "Data/Offline Cleaned Data.xlsx" and "Data/Offline Cleaned Data.xlsx" for formulae used to clean data
# Information on affirmation condition was taken from "Data/Laboratory Experimentor Log.xlsx"

# Factors as factors
DataC$Individualism <- as.factor(DataC$Individualism)
DataC$Affirmation_Condition <- as.factor(DataC$Affirmation_Condition)
DataC$Task_Condition <- as.factor(DataC$Task_Condition)

# Install all necessary packages
install.packages("corrplot", "dplyr", "forcats", "ggcorplot", "ggplot2", "ggpubr", "PerformanceAnalytics", "plyr", "reshape2", "scales", "sjlabelled", "sjmisc", "sjPlot", "tidyr", "xts", "zoo")