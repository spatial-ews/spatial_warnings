
if ( exists("EXTENDED_TESTS") && EXTENDED_TESTS ) { 

context('Test the deprecation of functions')

  test_that("Deprecation works and produces warnings", { 
      expect_error(generic_spews(forestgap[[3]]))
      expect_error(spectral_spews(forestgap[[3]]))
      expect_error(patchdistr_spews(forestgap[[3]]))
      expect_error(indicator_sdr(forestgap[[2]]), nulln = 3)
      expect_error(indicator_variance(forestgap[[2]]), nulln = 3)
      expect_error(indicator_skewness(forestgap[[2]]), nulln = 3)
      expect_error(indicator_moran(forestgap[[2]]), nulln = 3)
  })
  
}
