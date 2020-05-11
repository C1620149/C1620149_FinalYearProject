# ESE Plot 

# File name
jpeg("Figures/Figure3.jpg", width = 1600, height = 1000, res=150)

# Plot Datasets
# 1 Low x Aff x HG
DataESE1 <- subset(DataC, Individualism==1 & Affirmation_Condition==1 & Task_Condition==1, select = c("ESE","Correct"))
# 2 Low x Con x HG
DataESE2 <- subset(DataC, Individualism==1 & Affirmation_Condition==0 & Task_Condition==1, select = c("ESE","Correct"))
# 3 Low x Aff x HB
DataESE3 <- subset(DataC, Individualism==1 & Affirmation_Condition==1 & Task_Condition==2, select = c("ESE","Correct"))
# 4 Low x Con x HB
DataESE4 <- subset(DataC, Individualism==1 & Affirmation_Condition==0 & Task_Condition==2, select = c("ESE","Correct"))
# 5 High x Aff x HG
DataESE5 <- subset(DataC, Individualism==2 & Affirmation_Condition==1 & Task_Condition==1, select = c("ESE","Correct"))
# 6 High x Con x HG
DataESE6 <- subset(DataC, Individualism==2 & Affirmation_Condition==0 & Task_Condition==1, select = c("ESE","Correct"))
# 7 High x Aff x HB
DataESE7 <- subset(DataC, Individualism==2 & Affirmation_Condition==1 & Task_Condition==2, select = c("ESE","Correct"))
# 8 High x Con x HB
DataESE8 <- subset(DataC, Individualism==2 & Affirmation_Condition==0 & Task_Condition==2, select = c("ESE","Correct"))

# Plot Models
# 1 Low x Aff x HG
model_ESE1 <- glm(Correct ~ ESE, family="binomial", data=DataESE1)
# 2 Low x Con x HG
model_ESE2 <- glm(Correct ~ ESE, family="binomial", data=DataESE2)
# 3 Low x Aff x HB
model_ESE3 <- glm(Correct ~ ESE, family="binomial", data=DataESE3)
# 4 Low x Con x HB
model_ESE4 <- glm(Correct ~ ESE, family="binomial", data=DataESE4)
# 5 High x Aff x HG
model_ESE5 <- glm(Correct ~ ESE, family="binomial", data=DataESE5)
# 6 High x Con x HG
model_ESE6 <- glm(Correct ~ ESE, family="binomial", data=DataESE6)
# 7 High x Aff x HB
model_ESE7 <- glm(Correct ~ ESE, family="binomial", data=DataESE7)
# 8 High x Con x HB
model_ESE8 <- glm(Correct ~ ESE, family="binomial", data=DataESE8)


# Plot
xESE <- seq(1, 9, 1)

yESE1 <- predict(model_ESE1, list(ESE=xESE), type="response")
yESE2 <- predict(model_ESE2, list(ESE=xESE), type="response")
yESE3 <- predict(model_ESE3, list(ESE=xESE), type="response")
yESE4 <- predict(model_ESE4, list(ESE=xESE), type="response")
yESE5 <- predict(model_ESE5, list(ESE=xESE), type="response")
yESE6 <- predict(model_ESE6, list(ESE=xESE), type="response")
yESE7 <- predict(model_ESE7, list(ESE=xESE), type="response")
yESE8 <- predict(model_ESE8, list(ESE=xESE), type="response")

# Data Points
# Individualism: colour (Low col = "red", High col = "blue")
# Affirmation Condition: dot size (Control cex = 0.5, Affirmation cex = 1)
# Task Condition: style (HG pch=16 (dots), HB ltw=8 (stars))
# 1 Low x Aff x HG
plot(jitter(DataESE1$ESE, 0.5), jitter(DataESE1$Correct, 0.1), col="red", cex=1, pch=16, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )
# 2 Low x Con x HG
par(new=TRUE)
plot(jitter(DataESE2$ESE, 0.5), jitter(DataESE2$Correct, 0.1), col="red", cex=0.5, pch=16, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )
# 3 Low x Aff x HB
par(new=TRUE)
plot(jitter(DataESE3$ESE, 0.5), jitter(DataESE3$Correct, 0.1), col="red", cex=1, pch=8, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )
# 4 Low x Con x HB
par(new=TRUE)
plot(jitter(DataESE4$ESE, 0.5), jitter(DataESE4$Correct, 0.1), col="red", cex=0.5, pch=8, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )
# 5 High x Aff x HG
par(new=TRUE)
plot(jitter(DataESE5$ESE, 0.5), jitter(DataESE5$Correct, 0.1), col="blue", cex=1, pch=16, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )
# 6 High x Con x HG
par(new=TRUE)
plot(jitter(DataESE6$ESE, 0.5), jitter(DataESE6$Correct, 0.1), col="blue", cex=0.5, pch=16, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )
# 7 High x Aff x HB
par(new=TRUE)
plot(jitter(DataESE7$ESE, 0.5), jitter(DataESE7$Correct, 0.1), col="blue", cex=1, pch=8, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )
# 8 High x Con x HB
par(new=TRUE)
plot(jitter(DataESE8$ESE, 0.5), jitter(DataESE8$Correct, 0.1), col="blue", cex=0.5, pch=8, xlab = "ESE Score", ylab = "Correct", axes=FALSE, xlim = c(1,9), )

# Plot Lines
# Individualism: colour (Low col = "red", High col = "blue")
# Affirmation Condition: line thickness (Control lwd = 1, Affirmation lwd = 5)
# Task Condition: dash (HG lty=1, HB ltw=2)
# 1 Low x Aff x HG
lines(xESE, yESE1, col = "red", lwd = 5, lty=1)
# 2 Low x Con x HG
lines(xESE, yESE2, col = "red", lwd = 1, lty=1)
# 3 Low x Aff x HB
lines(xESE, yESE3, col = "red", lwd = 5, lty=2)
# 4 Low x Con x HB
lines(xESE, yESE4, col = "red", lwd = 1, lty=2)
# 5 High x Aff x HG
lines(xESE, yESE5, col = "blue", lwd = 5, lty=1)
# 6 High x Con x HG
lines(xESE, yESE6, col = "blue", lwd = 1, lty=1)
# 7 High x Aff x HB
lines(xESE, yESE7, col = "blue", lwd = 5, lty=2)
# 8 High x Con x HB
lines(xESE, yESE8, col = "blue", lwd = 1, lty=2)

# Axes
axis(2, at = c(0,1), lab = c("Incorrect", "Correct"))
axis(1, at =1:9)
abline(h=c(0,1), col = "gray")

# Plot Lines
# Individualism: colour (Low col = "red", High col = "blue")
# Affirmation Condition: line thickness (Control lwd = 1, Affirmation lwd = 5)
# Task Condition: dash (HG lty=1, HB ltw=2)
legend("bottomleft", inset=0.1, legend=c("Low x Affirmed x HG", "Low x Con x HG", "Low x Affirmed x HB", "Low x Con x HB", "High x Affirmed x HG", "High x Con x HG", "High x Affirmed x HB", "High x Con x HB"), col=c("red", "red", "red", "red", "blue", "blue", "blue", "blue"), lwd=c(2, 0.5, 2, 0.5, 2, 0.5, 2, 0.5), lty=c(1, 1, 2, 2, 1, 1, 2, 2), cex=0.8)
dev.off() 