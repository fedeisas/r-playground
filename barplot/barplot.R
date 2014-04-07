filename <- paste(dirname(sys.frame(1)$ofile), "/data.csv", sep="")
results <- read.csv2(file=filename, header=TRUE, sep=",")
barplot(results$Unit.of.Patients, main="Frequency", xlab="Number of patients", names.arg=results$Hospital.Number)