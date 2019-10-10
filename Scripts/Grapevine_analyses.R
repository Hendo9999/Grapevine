#load packages

library(tidyverse)#for tidy stuff
library(cowplot)# for graphing stuff
library(readxl)#for reading Excel files


#assign primary data files to variables

#file with harvester data
laminae_harvester <- read_xlsx("Data/0192 Mature laminae chloride summary with harvester info.xlsx")

#files with chloride data for each replicate & batch

#Biological replicate #1, sample batches #1 - #6
laminae_chloride_r1b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 9)
laminae_chloride_r1b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 10)
laminae_chloride_r1b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 12)
laminae_chloride_r1b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 14)
laminae_chloride_r1b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 18)
laminae_chloride_r1b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 20)

#Biological replicate #2, sample batches #1 - #6
laminae_chloride_r2b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 8)
laminae_chloride_r2b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 9)
laminae_chloride_r2b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 11)
laminae_chloride_r2b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 13)
laminae_chloride_r2b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 17)
laminae_chloride_r2b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 19)

#Biological replicate #3, sample batches #1 - #6
laminae_chloride_r3b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 8)
laminae_chloride_r3b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 9)
laminae_chloride_r3b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 11)
laminae_chloride_r3b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 13)
laminae_chloride_r3b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 17)
laminae_chloride_r3b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 19)#note: excel file tab is labelled Cl-R2B6 (not Cl-R3B6). Check with Deidre Blackmore if this is a typo.  


