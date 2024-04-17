library(tidyverse)
library(here)


tv_hours_short<-gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours,na.rm=TRUE))

write_csv(tv_hours_short, here("TV_Hours_By_Marital_Status.csv"))




