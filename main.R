message('this is a git test')
pie <- pi
pie
?lm
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)

summary(lm.D9)

install.packages('googlesheets')
library(googlesheets)
gs_auth()
ss <- gs_url("https://docs.google.com/spreadsheets/d/1f2h0UU-GYEX9HDc2HKp918D3Vrf21Xirj5iHRfmuOfM/edit#gid=0")
ss
?googlesheets
install.packages('tidyverse')
library(tidyverse)

gs_gap() %>% 
  gs_copy(to = "Gapminder")
## or, if you don't use pipes
gs_copy(gs_gap(), to = "Gapminder")

gs_edit_cells(ss, ws=1, input = "Hello", anchor="B3")

?gs_read

#pull google sheet into data frame
iris <- gs_read(ss, ws = 'iris', range = NULL)

