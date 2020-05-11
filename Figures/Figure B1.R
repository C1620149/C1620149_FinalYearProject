# Define Model
initialmod <- glm(formula = Correct ~ Task_Condition*Individualism*Affirmation_Condition*ESE*ISE, data=DataC, family="binomial")

# Figure B1 Table
tab_model(initialmod, auto.label=FALSE, show.est=TRUE, show.ci=FALSE, show.stat=TRUE, show.p=TRUE)
# This table was then formatted and tidied up (factors renamed and ORs > 6 figures simplified) in Word 