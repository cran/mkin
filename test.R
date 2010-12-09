library(mkin)

source("R/mkinfit.R")
source("R/mkinmod.R")

# Debug SFO model
mkinmod <- SFO
observed <- FOCUS_2006_A
parms.ini <- rep(0.1, 1)
state.ini <- c(100)
fixed_parms <- NULL
fixed_initials <- character(0)
lower = 0
upper = Inf
plot = FALSE
quiet = FALSE
err = NULL
weight = "none"
scaleVar = FALSE
atol = 1e-6

P <- c(state.ini.optim, parms.optim)

# Debug SFORB model
mkinmod <- SFORB
observed <- FOCUS_2006_C
parms.ini <- rep(0.1, 3)
state.ini <- c(100,0)
lower = 0
upper = Inf
fixed_parms <- NULL
fixed_initials <- "parent_bound"
plot = FALSE
quiet = FALSE
err = NULL
weight = "none"
scaleVar = FALSE
atol = 1e-6

P <- c(state.ini.optim, parms.optim)
SFORB.fit <- mkinfit(SFORB, FOCUS_2006_C, plot=TRUE)
summary(SFORB.fit)

# Debug SFO_SFO model
mkinmod <- SFO_SFO
observed <- FOCUS_2006_D
parms.ini <- rep(0.1, 3)
state.ini <- c(100,0)
lower = 0
upper = Inf
fixed_parms <- NULL
fixed_initials <- "m1"
plot = FALSE
quiet = FALSE
err = NULL
weight = "none"
scaleVar = FALSE
atol = 1e-6
eigen = TRUE

P <- c(state.ini.optim, parms.optim)
SFO_SFO.fit <- mkinfit(SFO_SFO, FOCUS_2006_D, eigen=FALSE, plot=TRUE)
SFO_SFO.fit.eigen <- mkinfit(SFO_SFO, FOCUS_2006_D, eigen=TRUE, plot=TRUE)
mkinplot(SFO_SFO.fit)
mkinplot(SFO_SFO.fit.eigen)
summary(SFO_SFO.fit, data=FALSE)
summary(SFO_SFO.fit.eigen, data=FALSE)
summary(SFO_SFO.fit)

# Debug mkinplot
xlab = "Time"
ylab = "Observed"
xlim = range(fit$data$time)
ylim = range(fit$data$observed, na.rm=TRUE)
legend = TRUE
fit <- mkinfit(SFO, FOCUS_2006_A, plot=TRUE)
mkinplot(fit)
