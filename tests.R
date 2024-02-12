test_that("<5>Solution file exists and knits",{
  expect_true(file.exists("solution.Rmd"))
  suppressWarnings(expect_error(knitr::knit("solution.Rmd", quiet = TRUE, envir=globalenv()), NA))
})

test_that("<1> bty_score object exists", {
  expect_s3_class(bty_score, "lm")
})

test_that("<3> evals_resid object includes score_pred and score_resid columns", {
  expect_error(expect_vector(evals_resid$score_pred, numeric()), NA)
  expect_error(expect_vector(evals_resid$score_resid, numeric()), NA)
})

test_that("<1> bty_age object exists", {
  expect_s3_class(bty_age, "lm")
})