#load packages

library(tidyverse)#for tidy stuff
library(cowplot)# for graphing stuff
library(readxl)#for reading Excel files


#assign primary data files to variables

#file with harvester data
raw_harvester <- read_xlsx("Data/0192 Mature laminae chloride summary with harvester info.xlsx")

#files with chloride data for each replicate & batch 
#import rows from specific sheets with chloride data for samples only (not standards)

#Biological replicate #1, sample batches #1 - #6, rows with pertinent data
raw_r1b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 9, n_max = 45)
raw_r1b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 10, n_max = 44)
raw_r1b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 12, n_max = 43)
raw_r1b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 14, n_max = 41)
raw_r1b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 18, n_max = 48)
raw_r1b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 20, n_max = 30)

#Biological replicate #2, sample batches #1 - #6
raw_r2b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 8, cell_rows(73:115))
raw_r2b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 9, cell_rows(71:114))
raw_r2b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 11, n_max = 47)
raw_r2b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 13, cell_rows(29:69))
raw_r2b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 17, n_max = 47)
raw_r2b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 19, n_max = 53)

#Biological replicate #3, sample batches #1 - #6
raw_r3b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 8, n_max = 44)
raw_r3b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 9, n_max = 43)
raw_r3b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 11, n_max = 44)
raw_r3b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 13, n_max = 48)
raw_r3b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 17, n_max = 45)


#Files with Standards data for each replicate & batch

#17.1mM Cl standards data for each sample batch
raw_r1b1_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 9, range = "F49:J67")
raw_r1b2_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 10, range = "F48:J66")
raw_r1b3_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 12, range = "B48:E66")
raw_r1b4_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 14, range = "B49:E67")
raw_r1b5_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 18, range = "B54:E72")
raw_r1b6_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 20, range = "B38:E56")

raw_r2b1_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 8, range = "G122:J140")
raw_r2b2_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 9, range = "G118:J136")
raw_r2b3_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 11, range = "D51:G69")
raw_r2b4_17mM_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 13, range = "D74:G92")
raw_r2b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 17, n_max = 47)
raw_r2b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 19, n_max = 53)

raw_r3b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 8, n_max = 44)
raw_r3b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 9, n_max = 43)
raw_r3b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 11, n_max = 44)
raw_r3b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 13, n_max = 48)
raw_r3b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 17, n_max = 45)

view(raw_r1b1_grape_st)
#Bulk "grapevine" standards data for each sample batch
raw_r1b1_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 9, range = "M49:O57")
raw_r1b2_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 10, range = "M48:O54")
raw_r1b3_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 12, range = "H48:J61")
raw_r1b4_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 14, range = "H49:J58")
raw_r1b5_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 18, range = "H54:J65")
raw_r1b6_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 20, range = "H38:J49")

#Biological replicate #2, sample batches #1 - #6
raw_r2b1_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 8, range = "M122:O131")
raw_r2b2_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 9, range = "M118:O128")
raw_r2b3_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 11, range = "J51:L61")
raw_r2b4_grape_st <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 13, range = "J74:L85")
raw_r2b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 17, n_max = 47)
raw_r2b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 19, n_max = 53)

#Biological replicate #3, sample batches #1 - #6
raw_r3b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 8, n_max = 44)
raw_r3b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 9, n_max = 43)
raw_r3b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 11, n_max = 44)
raw_r3b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 13, n_max = 48)
raw_r3b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 17, n_max = 45)
