#library(devtools)

devtools::document()
devtools::check_man()
devtools::test()
devtools::use_vignette("introduction")
devtools::build_vignettes()
devtools::install(build_vignettes = TRUE)

devtools::build()
devtools::install()
