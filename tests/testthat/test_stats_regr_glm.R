library(mlr3extralearners)
install_learners("regr.glm")

test_that("autotest", {
  learner = LearnerRegrGlm$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
