#
# Testar primeiro com os dados exemplo do pacote inext
library(iNEXT)
data("spider")
summary(spider)
spider
str(spider)
iNEXT(spider, q=0, datatype="abundance")
#
 
macki_co = Listas_mackinnon_co_2024_2025
macki_reitoria = listas_mackinnon_reitoria_bce_2025
mackinat = abund_rev_nat
#
#calcular a curva de rarefacao CO
#
dadografco = iNEXT(macki_co$somaregistros, q=0, datatype = "abundance")
ggiNEXT(dadografco, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadografco500 <- iNEXT(macki_co$somaregistros, q=0, datatype = "abundance", endpoint = 500)
dadografco1000 <- iNEXT(macki_co$somaregistros, q=0, datatype = "abundance", endpoint = 1000)
ggiNEXT(dadografco500, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
ggiNEXT(dadografco1000, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadografco
#
#calcular a curva de rarefacao da reitoria bce

dadografreitoria = iNEXT(macki_reitoria$somaregistreitoria, q=0, datatype = "abundance")
ggiNEXT(dadografreitoria, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadografreitoria500 <- iNEXT(macki_reitoria$somaregistreitoria, q=0, datatype = "abundance", endpoint = 500)
dadografreitoria1000 <- iNEXT(macki_reitoria$somaregistreitoria, q=0, datatype = "abundance", endpoint = 1000)
ggiNEXT(dadografreitoria500, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
ggiNEXT(dadografreitoria1000, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadografreitoria

#
dadografnat = iNEXT(mackinat$conta, q=0, datatype = "abundance")
ggiNEXT(dadografnat, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadografnat500 <- iNEXT(mackinat$conta, q=0, datatype = "abundance", endpoint = 500)
dadografnat1000 <- iNEXT(mackinat$conta, q=0, datatype = "abundance", endpoint = 1000)
ggiNEXT(dadografnat500, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
ggiNEXT(dadografnat1000, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadogranatf1000
#
#calcular riqueza estimada e diversidade de especies entre os habitats
#
mackinaturb = as.data.frame(nat_urb)
iNEXT(mackinaturb, q=0, datatype="abundance")
dadografurbnat = iNEXT(mackinaturb, q=0, datatype="abundance")
ggiNEXT(dadografurbnat, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)
#
