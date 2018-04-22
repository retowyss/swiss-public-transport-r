context("locations")

test_that("abort invalid query", {
  expect_error(locations(y = 42))
  expect_error(locations(x = 42))
  expect_gt(nrow(locations(query = "Bern")), 0)
})


