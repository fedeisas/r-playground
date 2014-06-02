filename <- paste(dirname(sys.frame(1)$ofile), "/data.csv", sep="")
results <- read.csv2(file=filename, header=TRUE, sep=",")

# cleanup column
results <- results[c('X1', 'X2', 'X3')]

