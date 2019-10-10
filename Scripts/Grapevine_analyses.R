#load packages

library(tidyverse)#for tidy stuff
library(cowplot)# for graphing stuff
library(readxl)#for reading Excel files


#assign primary data files to variables

#file with harvester data
raw_harvester <- read_xlsx("Data/0192 Mature laminae chloride summary with harvester info.xlsx")

#files with chloride data for each replicate & batch

#Biological replicate #1, sample batches #1 - #6
raw_r1b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 9)
raw_r1b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 10)
raw_r1b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 12)
raw_r1b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 14)
raw_r1b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 18)
raw_r1b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP1.xlsx", sheet = 20)

#Biological replicate #2, sample batches #1 - #6
raw_r2b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 8)
raw_r2b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 9)
raw_r2b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 11)
raw_r2b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 13)
raw_r2b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 17)
raw_r2b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP2.xlsx", sheet = 19)

#Biological replicate #3, sample batches #1 - #6
raw_r3b1 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 8)
raw_r3b2 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 9)
raw_r3b3 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 11)
raw_r3b4 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 13)
raw_r3b5 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 17)
raw_r3b6 <- read_xlsx("Data/3&4. 0192 barcodes (LAM)-BIOMASS.REP3.xlsx", sheet = 19)#note: excel file tab is labelled Cl-R2B6 (not Cl-R3B6). Check with Deidre Blackmore if this is a typo.  

#filter the raw files to select for rows with chloride data only (not standard data)
C_r1b1_fil <- raw_r1b1 %>%
  drop_na(Code) %>% #Chloride data has values in Code column, standards do not so can be removed on this basis
  filter("Code" != "Code")


C_r1b2_fil <- raw_r1b2 %>%
  drop_na(Code)

C_r1b3_fil <- raw_r1b3 %>%
  drop_na(Code)

C_r1b4_fil <- raw_r1b4 %>%
  drop_na(Code)

C_r1b5_fil <- raw_r1b5 %>%
  drop_na(Code)

C_r1b6_fil <- raw_r1b6 %>%
  drop_na(Code)

C_r2b1_fil <- raw_r2b1 %>%
  drop_na(Code) 

C_r2b2_fil <- raw_r2b2 %>%
  drop_na(Code)

C_r2b3_fil <- raw_r2b3 %>%
  drop_na(Code)

C_r2b4_fil <- raw_r2b4 %>%
  drop_na(Code)

C_r2b5_fil <- raw_r2b5 %>%
  drop_na(Code)

C_r2b6_fil <- raw_r2b6 %>%
  drop_na(Code)

C_r3b1_fil <- raw_r3b1 %>%
  drop_na(Code) 

C_r3b2_fil <- raw_r3b2 %>%
  drop_na(Code)

C_r3b3_fil <- raw_r3b3 %>%
  drop_na(Code)

C_r3b4_fil <- raw_r3b4 %>%
  drop_na(Code)

C_r3b5_fil <- raw_r3b5 %>%
  drop_na(Code)

C_r3b6_fil <- raw_r3b6 %>%
  drop_na(Code) %>% 
  Filter(C_r3b6_fil, "Code" != Code)


view(C_r3b6_fil)
