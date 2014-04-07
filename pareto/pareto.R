# install.packages("qcc")

# Load QCC libary
library("qcc")

# Read dataset
filename <- paste(dirname(sys.frame(1)$ofile), "/data.csv", sep="")
results <- read.csv2(file=filename, header=TRUE, sep=",")

defects <- results$Number.of.defects
names(defects) <- results$Source.of.Manufacturing.Error

pareto.chart(
  defects,
  main="Pareto Diagram: Cause of Manufacturing Defect", 
  ylab="% of defects in each category",
  cex.names=1,
  col=topo.colors(6)
) 
