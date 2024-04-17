library(tidyverse)
library(here)


tv_hours_long<-gss_cat %>%  
filter(age>=30)  %>%
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours,na.rm=TRUE))

write_csv(tv_hours, here("TV_Hours_By_Marital_Status.csv"))




