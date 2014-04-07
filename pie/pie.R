# Read dataset
filename <- paste(dirname(sys.frame(1)$ofile), "/data.csv", sep="")
results <- read.csv2(file=filename, header=TRUE, sep=",")

# Add percentage column
results$Percentage <- round(
  results$Unit.of.Patients / sum(results$Unit.of.Patients) * 100,
  2
)

# Create labels
lbls <- paste(results$Hospital.Number, results$Percentage)
lbls <- paste(lbls, '%', sep="")

# Plot pie chart 
pie(
  results$Unit.of.Patients,
  labels = lbls,
  col = rainbow(length(lbls)),
  main = "Hospital Patients by Unit"
)