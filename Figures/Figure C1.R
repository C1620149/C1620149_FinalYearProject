# Define Model
modCor <- glm(formula = Correct ~ Task_Condition*Individualism*Affirmation_Condition*ESE, data=DataC, family="binomial")
modDoA <- lm(formula = Degree_of_Association ~ Task_Condition*Individualism*Affirmation_Condition*ESE, data=DataC)
modLoF <- lm(formula = Likelihood_of_Failure ~ Task_Condition*Individualism*Affirmation_Condition*ESE, data=DataC)

# Figure C1 Table
tab_model(modLoF, modDoA, modCor, auto.label=FALSE, show.est=TRUE, show.ci=FALSE, show.stat=TRUE, show.p=TRUE)
# This table was then formatted and tidied up (factors renamed and ORs > 6 figures simplified) in Word 