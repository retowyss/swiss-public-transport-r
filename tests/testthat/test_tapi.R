library(SwissPublicTransport)

context("Tests")

test_that("tapi works", {
  x <- tapi("locations", query = "Bern")
  y <- tapi(
    "connections",
    from = "Bern",
    to = "Burgdorf",
    via = list("Zurich", "Basel")
  )
  expect_equal(x, x)
  expect_equal(y, y)
})

test_that("tapi error", {
  expect_error(tapi(
    "connections",
    from = "Bern",
    to = "Burgdorf",
    via = rnorm
  ))
})
