library(mkin)
scholz97_I_hoenninger <- data.frame(
  name = rep(c("tolylfluanid","DMST"), each = 10),
  time = rep(c(0, 0.5, 2, 4, 7, 12, 17, 24, 3 * 24, 7 * 24), 2),
  value = c(99.2, 93.5, 78.2, 57.4, 35.2, 10.6, 6.2, 0.9, 0.1, NA,
    0.6, 6.8, 20.2, 42.8, 63.5, 87.5, 92.7, 100.8, 99.2, 99.6))

SFO_SFO <- mkinmod(
  tolylfluanid = list(type="SFO", to = "DMST", sink=TRUE),
  DMST = list(type="SFO", to = NULL, sink=TRUE))

system.time(fit.1 <- mkinfit(SFO_SFO, scholz97_I_hoenninger))
system.time(fit.2 <- mkinfit(SFO_SFO, scholz97_I_hoenninger, lower=0))
summary(fit.1)

scholz97_II_hoenninger <- data.frame(
  name = rep(c("tolylfluanid_water", "DMST_water", "tolylfluanid_sediment", "DMST_sediment"), each=5),
  time = rep(c(0, 5, 12, 24, 7 * 24), 4),
  value = c(99.2, 39.5, 17.4, 1.1, NA,
    0.6, 36.5, 56.0, 66.0, 46.6,
    NA, 8.4, 6.7, 0.4, NA,
    NA, 9.6, 14.2, 24.3, 41.3))

SFO_SFO_ws <- mkinmod(
  tolylfluanid_water = list(type="SFO", to = c("tolylfluanid_sediment", "DMST_water"), sink=TRUE),
  tolylfluanid_sediment = list(type="SFO", to = c("tolylfluanid_water", "DMST_sediment"), sink=TRUE),
  DMST_water = list(type="SFO", to = c("DMST_sediment"), sink=TRUE),
  DMST_sediment = list(type="SFO", to = c("DMST_water"), sink=TRUE))

system.time(fit.ws.1 <- mkinfit(SFO_SFO_ws, scholz97_II_hoenninger, lower=0))
