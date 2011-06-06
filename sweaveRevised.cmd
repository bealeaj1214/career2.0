library('cacheSweave')
setCacheDir('/Users/alanbeale/gWork2/career2.0/build')
Sweave('sweaveRevised.Rnw', driver = cacheSweaveDriver)