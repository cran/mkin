pkgname <- "mkin"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('mkin')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("DFOP.solution")
### * DFOP.solution

flush(stderr()); flush(stdout())

### Name: DFOP.solution
### Title: Dual First-Order in Parallel kinetics
### Aliases: DFOP.solution
### Keywords: manip

### ** Examples

  ## Not run: plot(function(x) DFOP.solution(x, 100, 5, 0.5, 0.3), 0, 4, ylim=c(0,100))



cleanEx()
nameEx("FOCUS_2006_DFOP_ref_A_to_B")
### * FOCUS_2006_DFOP_ref_A_to_B

flush(stderr()); flush(stdout())

### Name: FOCUS_2006_DFOP_ref_A_to_B
### Title: Results of fitting the DFOP model to Datasets A to B of FOCUS
###   (2006)
### Aliases: FOCUS_2006_DFOP_ref_A_to_B
### Keywords: datasets

### ** Examples

data(FOCUS_2006_DFOP_ref_A_to_B)



cleanEx()
nameEx("FOCUS_2006_FOMC_ref_A_to_F")
### * FOCUS_2006_FOMC_ref_A_to_F

flush(stderr()); flush(stdout())

### Name: FOCUS_2006_FOMC_ref_A_to_F
### Title: Results of fitting the FOMC model to Datasets A to F of FOCUS
###   (2006)
### Aliases: FOCUS_2006_FOMC_ref_A_to_F
### Keywords: datasets

### ** Examples

data(FOCUS_2006_FOMC_ref_A_to_F)



cleanEx()
nameEx("FOCUS_2006_HS_ref_A_to_F")
### * FOCUS_2006_HS_ref_A_to_F

flush(stderr()); flush(stdout())

### Name: FOCUS_2006_HS_ref_A_to_F
### Title: Results of fitting the HS model to Datasets A to F of FOCUS
###   (2006)
### Aliases: FOCUS_2006_HS_ref_A_to_F
### Keywords: datasets

### ** Examples

data(FOCUS_2006_HS_ref_A_to_F)



cleanEx()
nameEx("FOCUS_2006_SFO_ref_A_to_F")
### * FOCUS_2006_SFO_ref_A_to_F

flush(stderr()); flush(stdout())

### Name: FOCUS_2006_SFO_ref_A_to_F
### Title: Results of fitting the SFO model to Datasets A to F of FOCUS
###   (2006)
### Aliases: FOCUS_2006_SFO_ref_A_to_F
### Keywords: datasets

### ** Examples

data(FOCUS_2006_SFO_ref_A_to_F)



cleanEx()
nameEx("FOCUS_2006_datasets")
### * FOCUS_2006_datasets

flush(stderr()); flush(stdout())

### Name: FOCUS_2006_datasets
### Title: Datasets A to F from the FOCUS Kinetics report from 2006
### Aliases: FOCUS_2006_A FOCUS_2006_B FOCUS_2006_C FOCUS_2006_D
###   FOCUS_2006_E FOCUS_2006_F
### Keywords: datasets

### ** Examples

FOCUS_2006_C



cleanEx()
nameEx("FOMC.solution")
### * FOMC.solution

flush(stderr()); flush(stdout())

### Name: FOMC.solution
### Title: First-Order Multi-Compartment kinetics
### Aliases: FOMC.solution
### Keywords: manip

### ** Examples

  ## Not run: plot(function(x) FOMC.solution(x, 100, 10, 2), 0, 2)



cleanEx()
nameEx("HS.solution")
### * HS.solution

flush(stderr()); flush(stdout())

### Name: HS.solution
### Title: Hockey-Stick kinetics
### Aliases: HS.solution
### Keywords: manip

### ** Examples

  ## Not run: plot(function(x) HS.solution(x, 100, 2, 0.3, 0.5), 0, 2, ylim=c(0,100))



cleanEx()
nameEx("SFO.solution")
### * SFO.solution

flush(stderr()); flush(stdout())

### Name: SFO.solution
### Title: Single First-Order kinetics
### Aliases: SFO.solution
### Keywords: manip

### ** Examples

  ## Not run: plot(function(x) SFO.solution(x, 100, 3), 0, 2)



cleanEx()
nameEx("SFORB.solution")
### * SFORB.solution

flush(stderr()); flush(stdout())

### Name: SFORB.solution
### Title: Single First-Order Reversible Binding kinetics
### Aliases: SFORB.solution
### Keywords: manip

### ** Examples

  ## Not run: plot(function(x) SFORB.solution(x, 100, 0.5, 2, 3), 0, 2)



cleanEx()
nameEx("ilr")
### * ilr

flush(stderr()); flush(stdout())

### Name: ilr
### Title: Function to perform isotropic log-ratio transformation
### Aliases: ilr invilr
### Keywords: manip

### ** Examples

# Order matters
ilr(c(0.1, 1, 10))
ilr(c(10, 1, 0.1))
# Equal entries give ilr transformations with zeros as elements
ilr(c(3, 3, 3))
# Almost equal entries give small numbers
ilr(c(0.3, 0.4, 0.3))
# Only the ratio between the numbers counts, not their sum
invilr(ilr(c(0.7, 0.29, 0.01)))
invilr(ilr(2.1 * c(0.7, 0.29, 0.01)))
# Inverse transformation of larger numbers gives unequal elements
invilr(-10)
invilr(c(-10, 0))
# The sum of the elements of the inverse ilr is 1
sum(invilr(c(-10, 0)))
# This is why we do not need all elements of the inverse transformation to go back:
a <- c(0.1, 0.3, 0.5)
b <- invilr(a)
length(b) # Four elements
ilr(c(b[1:3], 1 - sum(b[1:3]))) # Gives c(0.1, 0.3, 0.5)



cleanEx()
nameEx("mkin_long_to_wide")
### * mkin_long_to_wide

flush(stderr()); flush(stdout())

### Name: mkin_long_to_wide
### Title: Convert a dataframe from long to wide format.
### Aliases: mkin_long_to_wide
### Keywords: manip

### ** Examples

mkin_long_to_wide(FOCUS_2006_D)



cleanEx()
nameEx("mkin_wide_to_long")
### * mkin_wide_to_long

flush(stderr()); flush(stdout())

### Name: mkin_wide_to_long
### Title: Convert a dataframe with observations over time into long
###   format.
### Aliases: mkin_wide_to_long
### Keywords: manip

### ** Examples

wide <- data.frame(t = c(1,2,3), x = c(1,4,7), y = c(3,4,5))
mkin_wide_to_long(wide)



cleanEx()
nameEx("mkinfit")
### * mkinfit

flush(stderr()); flush(stdout())

### Name: mkinfit
### Title: Fit a kinetic model to data with one or more state variables.
### Aliases: mkinfit
### Keywords: models optimize

### ** Examples

# One parent compound, one metabolite, both single first order.
SFO_SFO <- mkinmod(
  parent = list(type = "SFO", to = "m1", sink = TRUE),
  m1 = list(type = "SFO"))
# Fit the model to the FOCUS example dataset D using defaults
fit <- mkinfit(SFO_SFO, FOCUS_2006_D)
str(fit)
summary(fit)



cleanEx()
nameEx("mkinmod")
### * mkinmod

flush(stderr()); flush(stdout())

### Name: mkinmod
### Title: Function to set up a kinetic model with one or more state
###   variables.
### Aliases: mkinmod
### Keywords: models

### ** Examples

# Specify the SFO model
SFO <- mkinmod(parent = list(type = "SFO"))

# One parent compound, one metabolite, both single first order.
SFO_SFO <- mkinmod(
  parent = list(type = "SFO", to = "m1"),
  m1 = list(type = "SFO"))




cleanEx()
nameEx("mkinpredict")
### * mkinpredict

flush(stderr()); flush(stdout())

### Name: mkinpredict
### Title: Produce predictions from a kinetic model using specifc
###   parameters
### Aliases: mkinpredict
### Keywords: manip

### ** Examples

  SFO <- mkinmod(degradinol = list(type = "SFO"))
  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), 0:20, solution_type = "analytical")
  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), 0:20, solution_type = "eigen")

  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), 1:20, solution_type = "analytical")[20,]
  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), 0:20, atol = 1e-20)[20,]
  # The integration method does not make a lot of difference
  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), 0:20, atol = 1e-20, method = "ode45")[20,]
  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), 0:20, atol = 1e-20, method = "rk4")[20,]
  # The number of output times does make a lot of difference
  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), seq(0, 20, by = 0.1))[201,]
  mkinpredict(SFO, c(k_degradinol_sink = 0.3), c(degradinol = 100), seq(0, 20, by = 0.01))[2001,]



cleanEx()
nameEx("mkinresplot")
### * mkinresplot

flush(stderr()); flush(stdout())

### Name: mkinresplot
### Title: Function to plot residuals stored in an mkin object
### Aliases: mkinresplot
### Keywords: hplot

### ** Examples

data <- mkin_wide_to_long(schaefer07_complex_case, time = "time")
model <- mkinmod(
  parent = list(type = "SFO", to = c("A1", "B1", "C1"), sink = FALSE),
  A1 = list(type = "SFO", to = "A2"),
  B1 = list(type = "SFO"),
  C1 = list(type = "SFO"),
  A2 = list(type = "SFO"))
## Not run: fit <- mkinfit(model, data, plot=TRUE)
## Not run: mkinresplot(fit, "A1")



cleanEx()
nameEx("plot.mkinfit")
### * plot.mkinfit

flush(stderr()); flush(stdout())

### Name: plot.mkinfit
### Title: Plot the observed data and the fitted model of an mkinfit
###   object.
### Aliases: plot.mkinfit
### Keywords: hplot

### ** Examples

# One parent compound, one metabolite, both single first order.
SFO_SFO <- mkinmod(
  parent = list(type = "SFO", to = "m1", sink = TRUE),
  m1 = list(type = "SFO"))
# Fit the model to the FOCUS example dataset D using defaults
fit <- mkinfit(SFO_SFO, FOCUS_2006_D)
## Not run: plot(fit)



cleanEx()
nameEx("schaefer07_complex_case")
### * schaefer07_complex_case

flush(stderr()); flush(stdout())

### Name: schaefer07_complex_case
### Title: Metabolism data set used for checking the software quality of
###   KinGUI
### Aliases: schaefer07_complex_case schaefer07_complex_results
### Keywords: datasets

### ** Examples

data <- mkin_wide_to_long(schaefer07_complex_case, time = "time")
model <- mkinmod(
  parent = list(type = "SFO", to = c("A1", "B1", "C1"), sink = FALSE),
  A1 = list(type = "SFO", to = "A2"),
  B1 = list(type = "SFO"),
  C1 = list(type = "SFO"),
  A2 = list(type = "SFO"))
## Not run: mkinfit(model, data, plot=TRUE)



cleanEx()
nameEx("summary.mkinfit")
### * summary.mkinfit

flush(stderr()); flush(stdout())

### Name: summary.mkinfit
### Title: Summary method for class "mkinfit".
### Aliases: summary.mkinfit print.summary.mkinfit
### Keywords: utilities

### ** Examples

  summary(mkinfit(mkinmod(parent = list(type = "SFO")), FOCUS_2006_A))



cleanEx()
nameEx("transform_odeparms")
### * transform_odeparms

flush(stderr()); flush(stdout())

### Name: transform_odeparms
### Title: Functions to transform and backtransform kinetic parameters for
###   fitting
### Aliases: transform_odeparms backtransform_odeparms
### Keywords: manip

### ** Examples

SFO_SFO <- mkinmod(
  parent = list(type = "SFO", to = "m1", sink = TRUE),
  m1 = list(type = "SFO"))
# Fit the model to the FOCUS example dataset D using defaults
fit <- mkinfit(SFO_SFO, FOCUS_2006_D)
summary(fit, data=FALSE) # See transformed and backtransformed parameters
initials <- fit$start$initial
transformed <- fit$start$transformed
names(initials) <- names(transformed) <- rownames(fit$start)
transform_odeparms(initials, c("parent", "m1"))
backtransform_odeparms(transformed, c("parent", "m1"))



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
