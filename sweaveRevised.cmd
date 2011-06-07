library('cacheSweave')
setCacheDir('build')
Sweave('sweaveRevised.Rnw', driver = cacheSweaveDriver)