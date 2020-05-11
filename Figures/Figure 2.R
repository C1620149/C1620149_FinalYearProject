# ISE Plot 
# File name
jpeg("Figures/Figure2.jpg", width = 1600, height = 1000, res=150)
# Plot Datasets
# 1 Low x Aff x HG
DataISE1 <- subset(DataC, Individualism==1 & Affirmation_Condition==1 & Task_Condition==1, select = c("ISE","Correct"))
# 2 Low x Con x HG
DataISE2 <- subset(DataC, Individualism==1 & Affirmation_Condition==0 & Task_Condition==1, select = c("ISE","Correct"))
# 3 Low x Aff x HB
DataISE3 <- subset(DataC, Individualism==1 & Affirmation_Condition==1 & Task_Condition==2, select = c("ISE","Correct"))
# 4 Low x Con x HB
DataISE4 <- subset(DataC, Individualism==1 & Affirmation_Condition==0 & Task_Condition==2, select = c("ISE","Correct"))
# 5 High x Aff x HG
DataISE5 <- subset(DataC, Individualism==2 & Affirmation_Condition==1 & Task_Condition==1, select = c("ISE","Correct"))
# 6 High x Con x HG
DataISE6 <- subset(DataC, Individualism==2 & Affirmation_Condition==0 & Task_Condition==1, select = c("ISE","Correct"))
# 7 High x Aff x HB
DataISE7 <- subset(DataC, Individualism==2 & Affirmation_Condition==1 & Task_Condition==2, select = c("ISE","Correct"))
# 8 High x Con x HB
DataISE8 <- subset(DataC, Individualism==2 & Affirmation_Condition==0 & Task_Condition==2, select = c("ISE","Correct"))

# Plot Models
# 1 Low x Aff x HG
model_ISE1 <- glm(Correct ~ ISE, family="binomial", data=DataISE1)
# 2 Low x Con x HG
model_ISE2 <- glm(Correct ~ ISE, family="binomial", data=DataISE2)
# 3 Low x Aff x HB
model_ISE3 <- glm(Correct ~ ISE, family="binomial", data=DataISE3)
# 4 Low x Con x HB
model_ISE4 <- glm(Correct ~ ISE, family="binomial", data=DataISE4)
# 5 High x Aff x HG
model_ISE5 <- glm(Correct ~ ISE, family="binomial", data=DataISE5)
# 6 High x Con x HG
model_ISE6 <- glm(Correct ~ ISE, family="binomial", data=DataISE6)
# 7 High x Aff x HB
model_ISE7 <- glm(Correct ~ ISE, family="binomial", data=DataISE7)
# 8 High x Con x HB
model_ISE8 <- glm(Correct ~ ISE, family="binomial", data=DataISE8)


# Plot
xISE <- seq(1, 9, 1)

yISE1 <- predict(model_ISE1, list(ISE=xISE), type="response")
yISE2 <- predict(model_ISE2, list(ISE=xISE), type="response")
yISE3 <- predict(model_ISE3, list(ISE=xISE), type="response")
yISE4 <- predict(model_ISE4, list(ISE=xISE), type="response")
yISE5 <- predict(model_ISE5, list(ISE=xISE), type="response")
yISE6 <- predict(model_ISE6, list(ISE=xISE), type="response")
yISE7 <- predict(model_ISE7, list(ISE=xISE), type="response")
yISE8 <- predict(model_ISE8, list(ISE=xISE), type="response")

# Data Points
# Individualism: colour (Low col = "red", High col = "blue")
# Affirmation Condition: dot size (Control cex = 0.5, Affirmation cex = 1)
# Task Condition: style (HG pch=16 (dots), HB ltw=8 (stars))
# 1 Low x Aff x HG
plot(jitter(DataISE1$ISE, 0.5), jitter(DataISE1$Correct, 0.1), col="red", cex=1, pch=16, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )
# 2 Low x Con x HG
par(new=TRUE)
plot(jitter(DataISE2$ISE, 0.5), jitter(DataISE2$Correct, 0.1), col="red", cex=0.5, pch=16, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )
# 3 Low x Aff x HB
par(new=TRUE)
plot(jitter(DataISE3$ISE, 0.5), jitter(DataISE3$Correct, 0.1), col="red", cex=1, pch=8, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )
# 4 Low x Con x HB
par(new=TRUE)
plot(jitter(DataISE4$ISE, 0.5), jitter(DataISE4$Correct, 0.1), col="red", cex=0.5, pch=8, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )
# 5 High x Aff x HG
par(new=TRUE)
plot(jitter(DataISE5$ISE, 0.5), jitter(DataISE5$Correct, 0.1), col="blue", cex=1, pch=16, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )
# 6 High x Con x HG
par(new=TRUE)
plot(jitter(DataISE6$ISE, 0.5), jitter(DataISE6$Correct, 0.1), col="blue", cex=0.5, pch=16, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )
# 7 High x Aff x HB
par(new=TRUE)
plot(jitter(DataISE7$ISE, 0.5), jitter(DataISE7$Correct, 0.1), col="blue", cex=1, pch=8, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )
# 8 High x Con x HB
par(new=TRUE)
plot(jitter(DataISE8$ISE, 0.5), jitter(DataISE8$Correct, 0.1), col="blue", cex=0.5, pch=8, xlab = "ISE Score", ylab = "Correct Interpretation of the Data", axes=FALSE, xlim = c(1,9), )

# Plot Lines
# Individualism: colour (Low col = "red", High col = "blue")
# Affirmation Condition: line thickness (Control lwd = 1, Affirmation lwd = 5)
# Task Condition: dash (HG lty=1, HB ltw=2)
# 1 Low x Aff x HG
lines(xISE, yISE1, col = "red", lwd = 5, lty=1)
# 2 Low x Con x HG
lines(xISE, yISE2, col = "red", lwd = 1, lty=1)
# 3 Low x Aff x HB
lines(xISE, yISE3, col = "red", lwd = 5, lty=2)
# 4 Low x Con x HB
lines(xISE, yISE4, col = "red", lwd = 1, lty=2)
# 5 High x Aff x HG
lines(xISE, yISE5, col = "blue", lwd = 5, lty=1)
# 6 High x Con x HG
lines(xISE, yISE6, col = "blue", lwd = 1, lty=1)
# 7 High x Aff x HB
lines(xISE, yISE7, col = "blue", lwd = 5, lty=2)
# 8 High x Con x HB
lines(xISE, yISE8, col = "blue", lwd = 1, lty=2)

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