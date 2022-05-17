library(Rmisc)
library(ggplot2)
library(lme4)
library(ggsignif)


data <- read.csv('alt_prop_final.csv', header=TRUE)



pairwise.prop.test(data$success, data$total)

# mal<-read.csv('alt_only_final.csv', header=TRUE)
# mal$response<-0
# mal$response[mal$Value=="alt1"]=1
# 
# summary<-summarySE(mal, measurevar="response", groupvars="Value")
# 
# summary
# 
# mal$Value <- factor(mal$Value, levels=c("ALT-IT ONLY","IT%2C ALT-IT","CONTROL", "IT ONLY"))
# levels(mal$Value)
# 
# 
# #Compare everything to the OT
# 
# contr.treatment(4)
# 
# contrasts(mal$Value) = contr.treatment(4)
# 
# model<-glmer(response~Value+(1+Value|MD5.hash.of.participant.s.IP.address)+(1+Value|filename),data=mal,
#              family = Gamma(link=identity),
#              control = glmerControl(optimizer="bobyqa"))
# 
# summary(model)







