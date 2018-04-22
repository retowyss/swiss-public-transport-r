context("connections")

test_that("abort invalid query", {
  expect_error(connections())
  expect_error(connections(from = "foo"))
  expect_error(connections(to = "foo"))
  expect_gt(nrow(connections(from = "Bern", to = "Zurich")), 0)
})
