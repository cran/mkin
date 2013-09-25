### R code from vignette source 'mkin.Rnw'

###################################################
### code chunk number 1: setup
###################################################
options(prompt = "R> ")
options(SweaveHooks = list(
  cex = function() par(cex.lab = 1.3, cex.axis = 1.3)))


###################################################
### code chunk number 2: FOCUS_2006_C_data
###################################################
library("mkin")
FOCUS_2006_C


###################################################
### code chunk number 3: data_format
###################################################
example_data <- data.frame(
  name = rep("parent", 9),
  time = c(0, 1, 3, 7, 14, 28, 63, 91, 119),
  value = c(85.1, 57.9, 29.9, 14.6, 9.7, 6.6, 4, 3.9, 0.6)
)


###################################################
### code chunk number 4: model_definition
###################################################
SFO <- mkinmod(parent = list(type = "SFO"))
SFORB <- mkinmod(parent = list(type = "SFORB"))
SFO_SFO <- mkinmod(
  parent = list(type = "SFO", to = "m1", sink = TRUE),
  m1 = list(type = "SFO"))
SFORB_SFO <- mkinmod(
  parent = list(type = "SFORB", to = "m1", sink = TRUE),
  m1 = list(type = "SFO"))


###################################################
### code chunk number 5: model_fitting
###################################################
SFO.fit <- mkinfit(SFO, FOCUS_2006_C)
summary(SFO.fit)
SFORB.fit <- mkinfit(SFORB, FOCUS_2006_C)
summary(SFORB.fit)
SFO_SFO.fit <- mkinfit(SFO_SFO, FOCUS_2006_D)
summary(SFO_SFO.fit, data=FALSE)
SFORB_SFO.fit <- mkinfit(SFORB_SFO, FOCUS_2006_D)
summary(SFORB_SFO.fit, data=FALSE)


