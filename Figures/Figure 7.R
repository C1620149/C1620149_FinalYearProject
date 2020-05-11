# ESE Plot 

# File name
jpeg("Figures/Figure7.jpg", width = 1600, height = 1000, res=150)

# Plot Datasets
# 1 Low x Aff x HG
DataESE1 <- subset(DataC, Individualism==1 & Affirmation_Condition==1 & Task_Condition==1, select = c("ESE","Likelihood_of_Failure"))
# 2 Low x Con x HG
DataESE2 <- subset(DataC, Individualism==1 & Affirmation_Condition==0 & Task_Condition==1, select = c("ESE","Likelihood_of_Failure"))
# 3 Low x Aff x HB
DataESE3 <- subset(DataC, Individualism==1 & Affirmation_Condition==1 & Task_Condition==2, select = c("ESE","Likelihood_of_Failure"))
# 4 Low x Con x HB
DataESE4 <- subset(DataC, Individualism==1 & Affirmation_Condition==0 & Task_Condition==2, select = c("ESE","Likelihood_of_Failure"))
# 5 High x Aff x HG
DataESE5 <- subset(DataC, Individualism==2 & Affirmation_Condition==1 & Task_Condition==1, select = c("ESE","Likelihood_of_Failure"))
# 6 High x Con x HG
DataESE6 <- subset(DataC, Individualism==2 & Affirmation_Condition==0 & Task_Condition==1, select = c("ESE","Likelihood_of_Failure"))
# 7 High x Aff x HB
DataESE7 <- subset(DataC, Individualism==2 & Affirmation_Condition==1 & Task_Condition==2, select = c("ESE","Likelihood_of_Failure"))
# 8 High x Con x HB
DataESE8 <- subset(DataC, Individualism==2 & Affirmation_Condition==0 & Task_Condition==2, select = c("ESE","Likelihood_of_Failure"))

# Data Points
# Individualism: colour (Low col = "red", High col = "blue")
# Affirmation Condition: dot size (Control cex = 0.5, Affirmation cex = 1)
# Task Condition: style (HG pch=16 (dots), HB ltw=8 (stars))
# 1 Low x Aff x HG
plot(jitter(DataESE1$ESE, 0.1), jitter(DataESE1$Likelihood_of_Failure, 0.1), col="red", cex=1, pch=16, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )
# 2 Low x Con x HG
par(new=TRUE)
plot(jitter(DataESE2$ESE, 0.1), jitter(DataESE2$Likelihood_of_Failure, 0.1), col="red", cex=0.5, pch=16, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )
# 3 Low x Aff x HB
par(new=TRUE)
plot(jitter(DataESE3$ESE, 0.1), jitter(DataESE3$Likelihood_of_Failure, 0.1), col="red", cex=1, pch=8, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )
# 4 Low x Con x HB
par(new=TRUE)
plot(jitter(DataESE4$ESE, 0.1), jitter(DataESE4$Likelihood_of_Failure, 0.1), col="red", cex=0.5, pch=8, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )
# 5 High x Aff x HG
par(new=TRUE)
plot(jitter(DataESE5$ESE, 0.1), jitter(DataESE5$Likelihood_of_Failure, 0.1), col="blue", cex=1, pch=16, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )
# 6 High x Con x HG
par(new=TRUE)
plot(jitter(DataESE6$ESE, 0.1), jitter(DataESE6$Likelihood_of_Failure, 0.1), col="blue", cex=0.5, pch=16, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )
# 7 High x Aff x HB
par(new=TRUE)
plot(jitter(DataESE7$ESE, 0.1), jitter(DataESE7$Likelihood_of_Failure, 0.1), col="blue", cex=1, pch=8, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )
# 8 High x Con x HB
par(new=TRUE)
plot(jitter(DataESE8$ESE, 0.1), jitter(DataESE8$Likelihood_of_Failure, 0.1), col="blue", cex=0.5, pch=8, xlab = "ESE Score", ylab = "Likelihood of Failure", axes=FALSE, xlim = c(1,9), ylim = c(1,9), )

# Plot Lines
# Individualism: colour (Low col = "red", High col = "blue")
# Affirmation Condition: line thickness (Control lwd = 1, Affirmation lwd = 5)
# Task Condition: dash (HG lty=1, HB ltw=2)
# 1 Low x Aff x HG
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE1), col = "red", lwd = 1, lty=1)
# 2 Low x Con x HG
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE2), col = "red", lwd = 5, lty=1)
# 3 Low x Aff x HB
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE3), col = "red", lwd = 1, lty=2)
# 4 Low x Con x HB
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE4), col = "red", lwd = 5, lty=2)
# 5 High x Aff x HG
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE5), col = "blue", lwd = 1, lty=1)
# 6 High x Con x HG
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE6), col = "blue", lwd = 5, lty=1)
# 7 High x Aff x HB
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE7), col = "blue", lwd = 1, lty=2)
# 8 High x Con x HB
abline(lm(formula = Likelihood_of_Failure ~ ESE, data=DataESE8), col = "blue", lwd = 5, lty=2)

# Axes
axis(2, at=seq(1, 9, 1), labels=c("-4", "-3", "-2", "-1", "0", "+1", "+2", "+3", "+4"))
axis(1, at =1:9)
abline(h=c(0,1), col = "gray")

# Legend
legend("bottomleft", inset=0.1, legend=c("Low x Affirmed x HG", "Low x Con x HG", "Low x Affirmed x HB", "Low x Con x HB", "High x Affirmed x HG", "High x Con x HG", "High x Affirmed x HB", "High x Con x HB"), col=c("red", "red", "red", "red", "blue", "blue", "blue", "blue"), lwd=c(2, 0.5, 2, 0.5, 2, 0.5, 2, 0.5), lty=c(1, 1, 2, 2, 1, 1, 2, 2), cex=0.8)
dev.off() 