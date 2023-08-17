# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE
library(dataiku)

# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE
# Example: load a DSS dataset as a R dataframe
mydataset <- dkuReadDataset("SampleDataSet", samplingMethod="head", nbRows=100000)

# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE
head(mydataset)

# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE
varstoplot <- c('DC_POWER', 'AC_POWER', 'DAILY_YIELD', 'TOTAL_YIELD', 'AMBIENT_TEMPERATURE', 'MODULE_TEMPERATURE', 'IRRADIATION')
pairs(mydataset[,varstoplot])

# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE
# Recipe outputs
dkuWriteDataset(r_recepie_output,"r_recepie_output")