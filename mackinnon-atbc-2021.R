#
# Testar primeiro com os dados exemplo do pacote inext
library(iNEXT)
data("spider")
summary(spider)
spider
str(spider)
iNEXT(spider, q=0, datatype="abundance")
#
# import csv data exportados da planilha reanalise 2021

library(readr)
abund_rev_nat <- read_csv("abund-rev-nat.csv")
soma_rev_urbana <- read_csv("soma-rev-urbana.csv")
nat_urb <- read_csv("nat-urb.csv")
# 
mackiurb = soma_rev_urbana
mackinat = abund_rev_nat
#
#calcular a curva de rarefacao urbana
#
dadografurb = iNEXT(mackiurb$conta, q=0, datatype = "abundance")
ggiNEXT(dadografurb, type=1, se=TRUE, facet.var="none", color.var="site", grey=FALSE)  
dadografurb500 <- iNEXT(mackiurb$conta, q=0, datatype = "abundance", endpoint = 500)
dadografurb1000 <- iNEXT(mackiurb$conta, q=0, datatype = "abundance", endpoint = 1000)
ggiNEXT(dadografurb500, type=1, se=TRUE, facet.var="none", color.var="site", grey=FALSE)  
ggiNEXT(dadografurb1000, type=1, se=TRUE, facet.var="none", color.var="site", grey=FALSE)  
dadografurb1000
#
#calcular a curva de rarefacao das areas naturais
#
dadografnat = iNEXT(mackinat$conta, q=0, datatype = "abundance")
ggiNEXT(dadografnat, type=1, se=TRUE, facet.var="none", color.var="site", grey=FALSE)  
dadografnat500 <- iNEXT(mackinat$conta, q=0, datatype = "abundance", endpoint = 500)
dadografnat1000 <- iNEXT(mackinat$conta, q=0, datatype = "abundance", endpoint = 1000)
ggiNEXT(dadografnat500, type=1, se=TRUE, facet.var="none", color.var="site", grey=FALSE)  
ggiNEXT(dadografnat1000, type=1, se=TRUE, facet.var="none", color.var="site", grey=FALSE)  
dadogranatf1000
#
#calcular riqueza estimada e diversidade de especies entre os habitats
#
mackinaturb = as.data.frame(nat_urb)
iNEXT(mackinaturb, q=0, datatype="abundance")
dadografurbnat = iNEXT(mackinaturb, q=0, datatype="abundance")
ggiNEXT(dadografurbnat, type=1, se=TRUE, facet.var="none", color.var="site", grey=FALSE)
#
