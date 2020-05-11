# Multicolinearity Checks
# Select variables relevant for correlation analysis to check for multicolinearity
VarCor <- c("Individualism", "Affirmation_Condition", "Task_Condition", "ISE", "ESE")
DataCor <- DataC[VarCor]
DataCor$Individualism <- as.numeric(as.character(DataCor$Individualism))
DataCor$Affirmation_Condition <- as.numeric(as.character(DataCor$Affirmation_Condition))
DataCor$Task_Condition <- as.numeric(as.character(DataCor$Task_Condition))
# Plot correlation matrix to allow easy inspection of the data
library("corrplot")
cor <- cor(DataCor)
cortest <- cor.mtest(DataCor, conf.level = .95)
jpeg("Figures/FigureB1.jpg", width = 1000, height = 1000, res=80)
corrplot.mixed(cor, p.mat = cortest$p, sig.level = .05)
dev.off() 
#Exact p-values for significant correlations
cor.test(DataCor$ISE, DataCor$ESE)$p.value
cor.test(DataCor$Task_Condition, DataCor$ESE)$p.value

# Initial model (which breaks)
initialmod <- glm(formula = Correct ~ Task_Condition*Individualism*Affirmation_Condition*ESE*ISE, data=DataC, family="binomial")
summary(initialmod)
# Explore variance inflation factors
car::vif(initialmod)
# See Figures/Figure 2.r for plotting of this model

# Model without ESE
modCor <- glm(formula = Correct ~ Task_Condition*Individualism*Affirmation_Condition*ESE, data=DataC, family="binomial")
summary(modCor)