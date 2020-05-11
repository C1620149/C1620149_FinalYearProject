library("ggpubr")
library("scales")

DataGraphs <- DataC

DataGraphs$Threat_Condition <- factor(DataGraphs$Threat_Condition, labels=c("No Threat", "Threat"))
DataGraphs$Affirmation_Condition <- factor(DataGraphs$Affirmation_Condition, labels=c("Control", "Affirmed"))
DataGraphs$Individualism <- factor(DataGraphs$Individualism, labels=c("Low", "High"))
DataGraphs$Task_Condition <- factor(DataGraphs$Task_Condition, labels=c("High=Good", "High=Bad"))


# Individualism x Task Condition Plot
jpeg("Figures/Figure4a.jpg", width = 500, height = 500, res=100)
ggline(DataGraphs, x = "Individualism", y = "Correct", linetype = "Task_Condition", 
       add = "mean_se", order = c("Low", "High"), ylab = "Percentage Correct Interpretation of Data", xlab = "Individualism", 
       xlim = c(1,2), ylim = c(0,1), ) + scale_y_continuous(labels=percent, breaks=c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) +
  theme(legend.position=c(.5, .87)) +
  labs(linetype="Task Condition")
dev.off() 

# Individualism x Task Condition x Affirmation Condition Plot
jpeg("Figures/Figure4b.jpg", width = 500, height = 500, res=100)
DataGraphs$Combo <- paste0(DataGraphs$Affirmation_Condition, DataGraphs$Task_Condition)
ggline(DataGraphs, x = "Individualism", y = "Correct", linetype = "Combo", color = "Combo",
       add = "mean_se", order = c("Low", "High"), ylab = "Percentage Correct Interpretation of Data", xlab = "Individualism", 
       xlim = c(1,2), ylim = c(0,1), ) + scale_y_continuous(labels=percent, breaks=c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) + 
  scale_color_manual(name="", values=c('#00BFC4','#00BFC4', '#F8766D','#F8766D'), labels=c("Affirmation | High = Bad", "Affirmation | High = Good", "Control | High = Bad", "Control | High = Good"), guide="none") +
  scale_linetype_manual(name="", values=c("solid", "dotted", "solid", "dotted"), labels=c("High=Good", "High=Bad", "High=Good", "High=Bad"), guide="none") +
  theme(legend.position=c(.3, .2)) + 
 guides(colour = guide_legend(title="Affirmation x Task Condition", override.aes = list(linetype = c("solid", "dotted", "solid", "dotted")))) 
dev.off() 

# Threat Plot
jpeg("Figures/Figure4c.jpg", width = 500, height = 500, res=100)
ggline(DataGraphs, x = "Threat_Condition", y = "Correct", 
       add = "mean_se", order = c("No Threat", "Threat"), ylab = "Percentage Correct Interpretation of Data", xlab = "Threat Condition", 
       xlim = c(1,2), ylim = c(0,1), ) + scale_y_continuous(labels=percent, breaks=c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1))
dev.off() 

# Threat x Affirmation Plot
jpeg("Figures/Figure4d.jpg", width = 500, height = 500, res=100)
ggline(DataGraphs, x = "Threat_Condition", y = "Correct", color = "Affirmation_Condition", 
       add = "mean_se", order = c("No Threat", "Threat"), ylab = "Percentage Correct Interpretation of Data", xlab = "Threat Condition", 
       xlim = c(1,2), ylim = c(0,1), ) + scale_y_continuous(labels=percent, breaks=c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) +
  theme(legend.position=c(.5, .87)) +
  labs(color="Affirmation Condition")
dev.off() 