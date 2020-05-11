# Main model
modDoA <- lm(formula = Degree_of_Association ~ Task_Condition*Individualism*Affirmation_Condition*ESE, data=DataC)
summary(modDoA)

# Check assumptions
par(mfrow=c(2,2)) # init 4 charts in 1 panel
plot(modDoA)

# Confirm no heteroscedasticity
lmtest::bptest(modDoA)  # Breusch-Pagan test
car::ncvTest(modDoA)  # NCV test