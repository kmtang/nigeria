### Nigeria Food Composition Matching ###

pacman::p_load(
  here,           # for directory simplification
  tidyverse       # for data processing
)

fct_match <- read_csv(here("./data/foodcomp/nga_lss18_fct.csv"))

fct_match <- fct_match %>% filter(!is.na(ref_foodid))     # remove individual food items used to calculate composite items
