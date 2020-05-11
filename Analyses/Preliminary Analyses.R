# Please note exclusions were done in excel and SPSS. View file "Analyes/Data/Final Data.sav" for dataset including excluded participants. 

# Participant Characteristics
table(DataC$Online)
table(DataC$Gender)
summary(DataC$Age)
sd(DataC$Age)

# Individualism Spread
table(DataC$Individualism)
table(DataC$Individualism, DataC$Task_Condition)

# Self-Esteem Characteristics
mean(DataC$ESE)
sd(DataC$ESE)
mean(DataC$ISE)
sd(DataC$ISE)

# Preliminary Regressions
# Interpretation of the data
modp1 <- glm(formula = Correct ~ Online*Affirmation_Condition, family = "binomial", data=DataC)
summary(modp1)
# Degree of Association
modp2 <- lm(formula = Degree_of_Association ~ Online*Affirmation_Condition, data=DataC)
summary(modp2)
# Likelihood of Failure
modp3 <- lm(formula = Likelihood_of_Failure ~ Online*Affirmation_Condition, data=DataC)
summary(modp3)