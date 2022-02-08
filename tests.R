test_that("Solution file has expected objects", {
  # the solution document to knits without errors
  expect_error(knitr::knit(text=readLines('PS06_solution.Rmd')), NA)
  # the `bty_score` and `bty_age` objects are linear models
  expect_s3_class(bty_score, "lm")
  expect_s3_class(bty_age, "lm")
})
