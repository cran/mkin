context("Export dataset for reading into CAKE")

test_that("Exporting is reproducible", {
  expect_error(CAKE_export(
    ds = list("FOCUS C" = FOCUS_2006_C,
              "FOCUS D" = FOCUS_2006_D),
    map = c(parent = "Parent", m1 = "M1"),
    links = c(parent = "m1"),
    filename = "FOCUS_2006_D.csf", overwrite = TRUE,
    study = "FOCUS 2006 D", date = "1900-01-01"),
    "elements of map have to be CAKE compartment names"
  )
  CAKE_export(
    ds = list("FOCUS C" = FOCUS_2006_C,
              "FOCUS D" = FOCUS_2006_D),
    map = c(parent = "Parent", m1 = "A1"),
    links = c(parent = "m1"),
    filename = "FOCUS_2006_D.csf", overwrite = TRUE,
    study = "FOCUS 2006 D", date = "1900-01-01")
  csf <- readLines(con = "FOCUS_2006_D.csf")
  expect_known_value(csf, file = "FOCUS_2006_D.rds")
  expect_error(CAKE_export(ds = list("FOCUS C" = FOCUS_2006_C),
    filename = "FOCUS_2006_D.csf", overwrite = FALSE),
    "already exists")
})
