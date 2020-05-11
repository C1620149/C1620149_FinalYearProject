# Select variables relevant for correlation plot
VarCor <- c("Individualism", "Affirmation_Condition", "Task_Condition", "ISE", "ESE")
DataCor <- DataC[VarCor]
DataCor$Individualism <- as.numeric(as.character(DataCor$Individualism))
DataCor$Affirmation_Condition <- as.numeric(as.character(DataCor$Affirmation_Condition))
DataCor$Task_Condition <- as.numeric(as.character(DataCor$Task_Condition))

# Plot
library("corrplot")
cor <- cor(DataCor)
cortest <- cor.mtest(DataCor, conf.level = .95)
jpeg("Figures/FigureA1.jpg", width = 1000, height = 1000, res=80)
corrplot.mixed(cor, p.mat = cortest$p, sig.level = .05)
dev.off() 