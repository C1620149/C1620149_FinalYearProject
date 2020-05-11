library("ggpubr")
library("scales")

DataGraphs <- DataC

DataGraphs$Threat_Condition <- factor(DataGraphs$Threat_Condition, labels=c("No Threat", "Threat"))
DataGraphs$Affirmation_Condition <- factor(DataGraphs$Affirmation_Condition, labels=c("Control", "Affirmed"))
DataGraphs$Individualism <- factor(DataGraphs$Individualism, labels=c("Low", "High"))
DataGraphs$Task_Condition <- factor(DataGraphs$Task_Condition, labels=c("High=Good", "High=Bad"))



# Individualism x Task Condition Plot
jpeg("Figures/Figure6a.jpg", width = 500, height = 500, res=100)
ggline(DataGraphs, x = "Individualism", y = "Degree_of_Association", linetype = "Task_Condition", 
       add = "mean_se", order = c("Low", "High"), ylab = "Mean Degree of Association", xlab = "Individualism", 
       xlim = c(1,2), ylim = c(1,9), ) + scale_y_continuous(breaks=c(1, 2, 3, 4, 5, 6, 7, 8, 9)) +
  theme(legend.position=c(.5, .87)) +
  labs(linetype="Task Condition")
dev.off() 

# Individualism x Task Condition x Affirmation Condition Plot
jpeg("Figures/Figure6b.jpg", width = 500, height = 500, res=100)
DataGraphs$Combo <- paste0(DataGraphs$Affirmation_Condition, DataGraphs$Task_Condition)
ggline(DataGraphs, x = "Individualism", y = "Degree_of_Association", linetype = "Combo", color = "Combo",
       add = "mean_se", order = c("Low", "High"), ylab = "Mean Degree of Association", xlab = "Individualism", 
       xlim = c(1,2), ylim = c(1,9), ) + scale_y_continuous(breaks=c(1, 2, 3, 4, 5, 6, 7, 8, 9)) +
  scale_color_manual(name="", values=c('#00BFC4','#00BFC4', '#F8766D','#F8766D'), labels=c("Affirmation | High = Bad", "Affirmation | High = Good", "Control | High = Bad", "Control | High = Good"), guide="none") +
  scale_linetype_manual(name="", values=c("solid", "dotted", "solid", "dotted"), labels=c("High=Good", "High=Bad", "High=Good", "High=Bad"), guide="none") +
  theme(legend.position=c(.5, .87)) + 
  guides(colour = guide_legend(title="Affirmation x Task Condition", override.aes = list(linetype = c("solid", "dotted", "solid", "dotted")))) 
dev.off() 

# Threat Plot
jpeg("Figures/Figure6c.jpg", width = 500, height = 500, res=100)
ggline(DataGraphs, x = "Threat_Condition", y = "Degree_of_Association", 
       add = "mean_se", order = c("No Threat", "Threat"), ylab = "Mean Degree of Association", xlab = "Threat Condition", 
       xlim = c(1,2), ylim = c(1,9), ) + scale_y_continuous(breaks=c(1, 2, 3, 4, 5, 6, 7, 8, 9))
dev.off() 

# Threat x Affirmation Plot

jpeg("Figures/Figure6d.jpg", width = 500, height = 500, res=100)
ggline(DataGraphs, x = "Threat_Condition", y = "Degree_of_Association", color = "Affirmation_Condition", 
       add = "mean_se", order = c("No Threat", "Threat"), ylab = "Mean Degree of Association", xlab = "Threat Condition", 
       xlim = c(1,2), ylim = c(1,9), ) + scale_y_continuous(breaks=c(1, 2, 3, 4, 5, 6, 7, 8, 9)) +
  theme(legend.position=c(.5, .87)) +
  labs(color="Affirmation Condition")
dev.off() 