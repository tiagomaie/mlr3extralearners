install_learners("surv.dnnsurv")
load_tests("surv.dnnsurv")

skip_on_os("windows")

test_that("autotest", {
  set.seed(10)
  learner = lrn("surv.dnnsurv", cuts = 5)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})
