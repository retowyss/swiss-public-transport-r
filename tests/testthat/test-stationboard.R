context("stationboard")

test_that("abort invalid query", {
  expect_error(stationboard(bar = "foo"))
  expect_gt(nrow(stationboard(station = "Bern")), 0)
})
