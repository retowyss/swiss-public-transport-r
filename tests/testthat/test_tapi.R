library(SwissPublicTransport)

context("Tests")

test_that("transport_api works", {
  x <- transport_api("locations", query = "Bern")
  y <- transport_api(
    "connections",
    from = "Bern",
    to = "Burgdorf",
    via = list("Zurich", "Basel")
  )
  expect_equal(x, x)
  expect_equal(y, y)
})

test_that("transport_api error", {
  expect_error(transport_api(
    "connections",
    from = "Bern",
    to = "Burgdorf",
    via = rnorm
  ))
})
