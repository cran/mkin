### R code from vignette source 'examples.Rnw'

###################################################
### code chunk number 1: setup
###################################################
options(prompt = "R> ")
options(SweaveHooks = list(
  cex = function() par(cex.lab = 1.3, cex.axis = 1.3)))


###################################################
### code chunk number 2: FOCUS_2006_L1_data
###################################################
library("mkin")
FOCUS_2006_L1 = data.frame(
  t = rep(c(0, 1, 2, 3, 5, 7, 14, 21, 30), each = 2),
  parent = c(88.3, 91.4, 85.6, 84.5, 78.9, 77.6, 
             72.0, 71.9, 50.3, 59.4, 47.0, 45.1,
             27.7, 27.3, 10.0, 10.4, 2.9, 4.0))
FOCUS_2006_L1_mkin <- mkin_wide_to_long(FOCUS_2006_L1)


###################################################
### code chunk number 3: Simple_models
###################################################
SFO <- mkinmod(parent = list(type = "SFO"))
FOMC <- mkinmod(parent = list(type = "FOMC"))
DFOP <- mkinmod(parent = list(type = "DFOP"))


###################################################
### code chunk number 4: L1_SFO
###################################################
m.L1.SFO <- mkinfit(SFO, FOCUS_2006_L1_mkin, quiet=TRUE)
summary(m.L1.SFO)


###################################################
### code chunk number 5: L1_SFO_plot
###################################################
plot(m.L1.SFO)


###################################################
### code chunk number 6: L1_SFO_residuals
###################################################
mkinresplot(m.L1.SFO, ylab = "Observed", xlab = "Time")


###################################################
### code chunk number 7: L1_FOMC
###################################################
m.L1.FOMC <- mkinfit(FOMC, FOCUS_2006_L1_mkin, quiet=TRUE)
summary(m.L1.FOMC)


###################################################
### code chunk number 8: FOCUS_2006_L2_data
###################################################
FOCUS_2006_L2 = data.frame(
  t = rep(c(0, 1, 3, 7, 14, 28), each = 2),
  parent = c(96.1, 91.8, 41.4, 38.7,
             19.3, 22.3, 4.6, 4.6,
             2.6, 1.2, 0.3, 0.6))
FOCUS_2006_L2_mkin <- mkin_wide_to_long(FOCUS_2006_L2)


###################################################
### code chunk number 9: L2_SFO
###################################################
m.L2.SFO <- mkinfit(SFO, FOCUS_2006_L2_mkin, quiet=TRUE)
summary(m.L2.SFO)


###################################################
### code chunk number 10: L2_SFO_plot
###################################################
par(mfrow = c(2, 1))
plot(m.L2.SFO)
mkinresplot(m.L2.SFO)


###################################################
### code chunk number 11: L2_FOMC
###################################################
m.L2.FOMC <- mkinfit(FOMC, FOCUS_2006_L2_mkin, quiet = TRUE)
par(mfrow = c(2, 1))
plot(m.L2.FOMC)
mkinresplot(m.L2.FOMC)
summary(m.L2.FOMC, data = FALSE)


###################################################
### code chunk number 12: L2_DFOP
###################################################
m.L2.DFOP <- mkinfit(DFOP, FOCUS_2006_L2_mkin, quiet = TRUE)
plot(m.L2.DFOP)


###################################################
### code chunk number 13: L2_DFOP_2
###################################################
m.L2.DFOP <- mkinfit(DFOP, FOCUS_2006_L2_mkin, 
  parms.ini = c(k1 = 1, k2 = 0.01, g = 0.8),
  quiet=TRUE)
plot(m.L2.DFOP)
summary(m.L2.DFOP, data = FALSE)


###################################################
### code chunk number 14: FOCUS_2006_L3_data
###################################################
FOCUS_2006_L3 = data.frame(
  t = c(0, 3, 7, 14, 30, 60, 91, 120),
  parent = c(97.8, 60, 51, 43, 35, 22, 15, 12))
FOCUS_2006_L3_mkin <- mkin_wide_to_long(FOCUS_2006_L3)


###################################################
### code chunk number 15: L3_SFO
###################################################
m.L3.SFO <- mkinfit(SFO, FOCUS_2006_L3_mkin, quiet = TRUE)
plot(m.L3.SFO)
summary(m.L3.SFO)


###################################################
### code chunk number 16: L3_FOMC
###################################################
m.L3.FOMC <- mkinfit(FOMC, FOCUS_2006_L3_mkin, quiet = TRUE)
plot(m.L3.FOMC)
summary(m.L3.FOMC, data = FALSE)


###################################################
### code chunk number 17: L3_DFOP
###################################################
m.L3.DFOP <- mkinfit(DFOP, FOCUS_2006_L3_mkin, quiet = TRUE)
plot(m.L3.DFOP)
summary(m.L3.DFOP, data = FALSE)


###################################################
### code chunk number 18: FOCUS_2006_L4_data
###################################################
FOCUS_2006_L4 = data.frame(
  t = c(0, 3, 7, 14, 30, 60, 91, 120),
  parent = c(96.6, 96.3, 94.3, 88.8, 74.9, 59.9, 53.5, 49.0))
FOCUS_2006_L4_mkin <- mkin_wide_to_long(FOCUS_2006_L4)


###################################################
### code chunk number 19: L4_SFO
###################################################
m.L4.SFO <- mkinfit(SFO, FOCUS_2006_L4_mkin, quiet = TRUE)
plot(m.L4.SFO)
summary(m.L4.SFO, data = FALSE)


###################################################
### code chunk number 20: L4_FOMC
###################################################
m.L4.FOMC <- mkinfit(FOMC, FOCUS_2006_L4_mkin, quiet = TRUE)
plot(m.L4.FOMC)
summary(m.L4.FOMC, data = FALSE)


###################################################
### code chunk number 21: FOCUS_2006_Z_data
###################################################
LOD = 0.5
FOCUS_2006_Z = data.frame(
  t = c(0, 0.04, 0.125, 0.29, 0.54, 1, 2, 3, 4, 7, 10, 14, 21, 
        42, 61, 96, 124),
  Z0 = c(100, 81.7, 70.4, 51.1, 41.2, 6.6, 4.6, 3.9, 4.6, 4.3, 6.8, 
         2.9, 3.5, 5.3, 4.4, 1.2, 0.7),
  Z1 = c(0, 18.3, 29.6, 46.3, 55.1, 65.7, 39.1, 36, 15.3, 5.6, 1.1, 
         1.6, 0.6, 0.5 * LOD, NA, NA, NA),
  Z2 = c(0, NA, 0.5 * LOD, 2.6, 3.8, 15.3, 37.2, 31.7, 35.6, 14.5, 
         0.8, 2.1, 1.9, 0.5 * LOD, NA, NA, NA),
  Z3 = c(0, NA, NA, NA, NA, 0.5 * LOD, 9.2, 13.1, 22.3, 28.4, 32.5, 
         25.2, 17.2, 4.8, 4.5, 2.8, 4.4))

FOCUS_2006_Z_mkin <- mkin_wide_to_long(FOCUS_2006_Z)


###################################################
### code chunk number 22: FOCUS_2006_Z_fits_1
###################################################
Z.2a <- mkinmod(Z0 = list(type = "SFO", to = "Z1"),
                Z1 = list(type = "SFO"))
m.Z.2a <- mkinfit(Z.2a, FOCUS_2006_Z_mkin, quiet = TRUE)
plot(m.Z.2a)
summary(m.Z.2a, data = FALSE)


###################################################
### code chunk number 23: FOCUS_2006_Z_fits_2
###################################################
Z.2a.ff <- mkinmod(Z0 = list(type = "SFO", to = "Z1"),
                Z1 = list(type = "SFO"), use_of_ff = "max")

m.Z.2a.ff <- mkinfit(Z.2a.ff, FOCUS_2006_Z_mkin, quiet = TRUE)
plot(m.Z.2a.ff)
summary(m.Z.2a.ff, data = FALSE)


###################################################
### code chunk number 24: FOCUS_2006_Z_fits_3
###################################################
Z.3 <- mkinmod(Z0 = list(type = "SFO", to = "Z1", sink = FALSE),
               Z1 = list(type = "SFO"))
m.Z.3 <- mkinfit(Z.3, FOCUS_2006_Z_mkin, parms.ini = c(k_Z0_Z1 = 0.5), 
                quiet = TRUE)
#m.Z.3 <- mkinfit(Z.3, FOCUS_2006_Z_mkin, solution_type = "deSolve") 
plot(m.Z.3)
summary(m.Z.3, data = FALSE)


###################################################
### code chunk number 25: FOCUS_2006_Z_fits_4
###################################################
Z.4a <- mkinmod(Z0 = list(type = "SFO", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO", to = "Z2"),
                Z2 = list(type = "SFO"))
m.Z.4a <- mkinfit(Z.4a, FOCUS_2006_Z_mkin, parms.ini = c(k_Z0_Z1 = 0.5),
                  quiet = TRUE)
plot(m.Z.4a)
summary(m.Z.4a, data = FALSE)


###################################################
### code chunk number 26: FOCUS_2006_Z_fits_5
###################################################
Z.5 <- mkinmod(Z0 = list(type = "SFO", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO", to = "Z2", sink = FALSE),
                Z2 = list(type = "SFO"))
m.Z.5 <- mkinfit(Z.5, FOCUS_2006_Z_mkin, 
                  parms.ini = c(k_Z0_Z1 = 0.5, k_Z1_Z2 = 0.2), quiet = TRUE)
plot(m.Z.5)
summary(m.Z.5, data = FALSE)


###################################################
### code chunk number 27: FOCUS_2006_Z_fits_6
###################################################
Z.FOCUS <- mkinmod(Z0 = list(type = "SFO", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO", to = "Z2", sink = FALSE),
                Z2 = list(type = "SFO", to = "Z3"),
                Z3 = list(type = "SFO"))
m.Z.FOCUS <- mkinfit(Z.FOCUS, FOCUS_2006_Z_mkin, 
                  parms.ini = c(k_Z0_Z1 = 0.5, k_Z1_Z2 = 0.2, k_Z2_Z3 = 0.3),
                  quiet = TRUE)
plot(m.Z.FOCUS)
summary(m.Z.FOCUS, data = FALSE)


###################################################
### code chunk number 28: FOCUS_2006_Z_residuals_6
###################################################
par(mfrow = c(2, 2))
mkinresplot(m.Z.FOCUS, "Z0", lpos = "bottomright")
mkinresplot(m.Z.FOCUS, "Z1", lpos = "bottomright")
mkinresplot(m.Z.FOCUS, "Z2", lpos = "bottomright")
mkinresplot(m.Z.FOCUS, "Z3", lpos = "bottomright")


###################################################
### code chunk number 29: FOCUS_2006_Z_fits_7
###################################################
Z.mkin.1 <- mkinmod(Z0 = list(type = "SFO", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO", to = "Z2", sink = FALSE),
                Z2 = list(type = "SFO", to = "Z3"),
                Z3 = list(type = "SFORB"))
m.Z.mkin.1 <- mkinfit(Z.mkin.1, FOCUS_2006_Z_mkin, 
                  parms.ini = c(k_Z0_Z1 = 0.5, k_Z1_Z2 = 0.3),
                  quiet = TRUE)
plot(m.Z.mkin.1)
summary(m.Z.mkin.1, data = FALSE)


###################################################
### code chunk number 30: FOCUS_2006_Z_fits_8
###################################################
Z.mkin.2 <- mkinmod(Z0 = list(type = "SFORB", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO"))
m.Z.mkin.2 <- mkinfit(Z.mkin.2, FOCUS_2006_Z_mkin, quiet = TRUE)
plot(m.Z.mkin.2)
summary(m.Z.mkin.2, data = FALSE)


###################################################
### code chunk number 31: FOCUS_2006_Z_fits_9
###################################################
Z.mkin.3 <- mkinmod(Z0 = list(type = "SFORB", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO", to = "Z2"),
                Z2 = list(type = "SFO"))
m.Z.mkin.3 <- mkinfit(Z.mkin.3, FOCUS_2006_Z_mkin, quiet = TRUE)
plot(m.Z.mkin.3)
summary(m.Z.mkin.3, data = FALSE)


###################################################
### code chunk number 32: FOCUS_2006_Z_fits_10
###################################################
Z.mkin.4 <- mkinmod(Z0 = list(type = "SFORB", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO", to = "Z2", sink = FALSE),
                Z2 = list(type = "SFO", to = "Z3"),
                Z3 = list(type = "SFO"))
m.Z.mkin.4 <- mkinfit(Z.mkin.4, FOCUS_2006_Z_mkin, 
  parms.ini = c(k_Z1_Z2 = 0.05), quiet = TRUE)
plot(m.Z.mkin.4)
summary(m.Z.mkin.4, data = FALSE)


###################################################
### code chunk number 33: FOCUS_2006_Z_fits_11
###################################################
Z.mkin.5 <- mkinmod(Z0 = list(type = "SFORB", to = "Z1", sink = FALSE),
                Z1 = list(type = "SFO", to = "Z2", sink = FALSE),
                Z2 = list(type = "SFO", to = "Z3"),
                Z3 = list(type = "SFORB"))
m.Z.mkin.5 <- mkinfit(Z.mkin.5, FOCUS_2006_Z_mkin, 
  parms.ini = c(k_Z1_Z2 = 0.2), quiet = TRUE)
plot(m.Z.mkin.5)
summary(m.Z.mkin.5, data = FALSE)


###################################################
### code chunk number 34: FOCUS_2006_Z_residuals_11
###################################################
par(mfrow = c(2, 2))
mkinresplot(m.Z.mkin.5, "Z0", lpos = "bottomright")
mkinresplot(m.Z.mkin.5, "Z1", lpos = "bottomright")
mkinresplot(m.Z.mkin.5, "Z2", lpos = "bottomright")
mkinresplot(m.Z.mkin.5, "Z3", lpos = "bottomright")


