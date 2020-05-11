# Main model
modLoF <- lm(formula = Likelihood_of_Failure ~ Task_Condition*Individualism*Affirmation_Condition*ESE, data=DataC)
summary(modLoF)

# Check assumptions
dev.off()
par(mfrow=c(2,2)) # init 4 charts in 1 panel
plot(modLoF)

# Confirm no heteroscedasticity
lmtest::bptest(modLoF)  # Breusch-Pagan test
car::ncvTest(modLoF)  # NCV test