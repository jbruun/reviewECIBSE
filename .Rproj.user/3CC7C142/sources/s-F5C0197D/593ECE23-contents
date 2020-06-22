#NOT DONE
library(qgraph)
#THEORETICAL MAPS
e <- get.edgelist(mapTheoretical,names=F)
l<- layout_with_fr(mapTheoretical)
#l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(mapTheoretical), area=16*(vcount(mapTheoretical)^2),repulse.rad=(vcount(mapTheoretical)^3.1))
plot(mapTheoretical, l,rescale=T,vertex.size=log2(V(mapTheoretical)$n_words), vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=log(E(mapTheoretical)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(V(mapTheoretical)$internallinks), edge.arrow.size=0.1,main="Theoretical Map", 
     sub="paste(V(mapTheoretical)$modulename[1])")

e <- get.edgelist(mapTBB,names=F)
l<- layout_with_fr(mapTBB)
#l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(mapTBB), area=16*(vcount(mapTBB)^2),repulse.rad=(vcount(mapTBB)^3.1))
plot(mapTBB, l,rescale=T,vertex.size=log2(V(mapTBB)$n_words), vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=log(E(mapTBB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(V(mapTheoretical)$internallinks), edge.arrow.size=0.1,main="Theoretical Map", 
     sub="paste(V(mapTBB)$modulename[1])")

#Empirical MAPS
e <- get.edgelist(mapEmpirical,names=F)
l<- layout_with_kk(mapEmpirical)
#l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(mapTheoretical), area=16*(vcount(mapTheoretical)^2),repulse.rad=(vcount(mapTheoretical)^3.1))
plot(mapEmpirical, l,rescale=T,vertex.size=log2(V(mapEmpirical)$n_words), vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=log(E(mapEmpirical)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(V(mapEmpirical)$internallinks), edge.arrow.size=0.1,main="Empirical Map", 
)

e <- get.edgelist(mapEBB,names=F)
l<- layout_with_fr(mapEBB)
#l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(mapEBB), area=16*(vcount(mapEBB)^2),repulse.rad=(vcount(mapEBB)^3.1))
plot(mapEBB, l,rescale=T,vertex.size=log2(V(mapEBB)$n_words), vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=log(E(mapEBB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(V(mapEmpirical)$internallinks), edge.arrow.size=0.1,main="Empirical Map")



#THEORETICAL Module 01
V(T_M01)$type<-1
V(T_M01)$type[V(T_M01)$pr>=sort(V(T_M01)$pr,decreasing = T)[40]]<-3
pdf("T_M01.pdf",width=30,height=30)

e <- get.edgelist(T_M01,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M01), area=8*(vcount(T_M01)^2),repulse.rad=(vcount(T_M01)^3.1))
plot(T_M01, l,rescale=T,vertex.size=V(T_M01)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M01)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M01)$pr))
     , edge.arrow.size=E(T_M01)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M01BB<-backboneNetwork(T_M01,0.000001,1)
V(T_M01BB)$pr<-V(T_M01)$pr
T_M01BB<-decompose.graph(T_M01BB,min.vertices = 2)[[1]]
V(T_M01BB)$type<-1
V(T_M01BB)$type[V(T_M01BB)$pr>=sort(V(T_M01BB)$pr,decreasing = T)[40]]<-3
pdf("T_M01BB.pdf",width=30,height=30)

e <- get.edgelist(T_M01BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M01BB), area=16*(vcount(T_M01BB)^2),repulse.rad=(vcount(T_M01BB)^4))
plot(T_M01BB, l,rescale=T,vertex.size=V(T_M01BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M01BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M01BB)$pr))
     , edge.arrow.size=0.3*E(T_M01BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()


V(T_M02)$type<-1
V(T_M02)$type[V(T_M02)$pr>=sort(V(T_M02)$pr,decreasing = T)[40]]<-3
pdf("T_M02.pdf",width=30,height=30)

e <- get.edgelist(T_M02,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M02), area=8*(vcount(T_M02)^2),repulse.rad=(vcount(T_M02)^3.1))
plot(T_M02, l,rescale=T,vertex.size=V(T_M02)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M02)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M02)$pr))
     , edge.arrow.size=E(T_M02)$weight,main="Theoretical Module 2", sub=paste(V(mapTheoretical)$modulename[2]))

dev.off()
T_M02BB<-backboneNetwork(T_M02,0.000001,1)
V(T_M02BB)$pr<-V(T_M02)$pr
T_M02BB<-decompose.graph(T_M02BB,min.vertices = 2)[[1]]
V(T_M02BB)$type<-1
V(T_M02BB)$type[V(T_M02BB)$pr>=sort(V(T_M02BB)$pr,decreasing = T)[40]]<-3
pdf("T_M02BB.pdf",width=30,height=30)

e <- get.edgelist(T_M02BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M02BB), area=16*(vcount(T_M02BB)^2),repulse.rad=(vcount(T_M02BB)^4))
plot(T_M02BB, l,rescale=T,vertex.size=V(T_M02BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M02BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M02BB)$pr))
     , edge.arrow.size=0.3*E(T_M02BB)$weight,main="Theoretical Module 2 backbone", sub=paste(V(mapTheoretical)$modulename[2]))

dev.off()


V(T_M03)$type<-1
V(T_M03)$type[V(T_M03)$pr>=sort(V(T_M03)$pr,decreasing = T)[40]]<-3
pdf("T_M03.pdf",width=30,height=30)

e <- get.edgelist(T_M03,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M03), area=8*(vcount(T_M03)^2),repulse.rad=(vcount(T_M03)^3.1))
plot(T_M03, l,rescale=T,vertex.size=V(T_M03)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M03)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M03)$pr))
     , edge.arrow.size=E(T_M03)$weight,main="Theoretical Module 3", sub=paste(V(mapTheoretical)$modulename[3]))

dev.off()
T_M03BB<-backboneNetwork(T_M03,0.000001,1)
V(T_M03BB)$pr<-V(T_M03)$pr
T_M03BB<-decompose.graph(T_M03BB,min.vertices = 2)[[1]]
V(T_M03BB)$type<-1
V(T_M03BB)$type[V(T_M03BB)$pr>=sort(V(T_M03BB)$pr,decreasing = T)[40]]<-3
pdf("T_M03BB.pdf",width=30,height=30)

e <- get.edgelist(T_M03BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M03BB), area=16*(vcount(T_M03BB)^2),repulse.rad=(vcount(T_M03BB)^4))
plot(T_M03BB, l,rescale=T,vertex.size=V(T_M03BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M03BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M03BB)$pr))
     , edge.arrow.size=0.3*E(T_M03BB)$weight,main="Theoretical Module 3 backbone", sub=paste(V(mapTheoretical)$modulename[3]))

dev.off()


 ###Theoretical 04
V(T_M04)$type<-1
V(T_M04)$type[V(T_M04)$pr>=sort(V(T_M04)$pr,decreasing = T)[40]]<-3
pdf("T_M04.pdf",width=30,height=30)

e <- get.edgelist(T_M04,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M04), area=8*(vcount(T_M04)^2),repulse.rad=(vcount(T_M04)^3.1))
plot(T_M04, l,rescale=T,vertex.size=V(T_M04)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M04)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M04)$pr))
     , edge.arrow.size=0.2*E(T_M04)$weight,main="Theoretical Module 4", sub=paste(V(mapTheoretical)$modulename[4]))

dev.off()
T_M04BB<-backboneNetwork(T_M04,0.000001,1)
V(T_M04BB)$pr<-V(T_M04)$pr
T_M04BB<-decompose.graph(T_M04BB,min.vertices = 2)[[1]]
V(T_M04BB)$type<-1
V(T_M04BB)$type[V(T_M04BB)$pr>=sort(V(T_M04BB)$pr,decreasing = T)[40]]<-3
pdf("T_M04BB.pdf",width=30,height=30)

e <- get.edgelist(T_M04BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M04BB), area=16*(vcount(T_M04BB)^2),repulse.rad=(vcount(T_M04BB)^4))
plot(T_M04BB, l,rescale=T,vertex.size=V(T_M04BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M04BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M04BB)$pr))
     , edge.arrow.size=0.2*E(T_M04BB)$weight,main="Theoretical Module 4 backbone", sub=paste(V(mapTheoretical)$modulename[4]))

dev.off()

###Theoretical 05
V(T_M05)$type<-1
V(T_M05)$type[V(T_M05)$pr>=sort(V(T_M05)$pr,decreasing = T)[40]]<-3
pdf("T_M05.pdf",width=30,height=30)

e <- get.edgelist(T_M05,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M05), area=8*(vcount(T_M05)^2),repulse.rad=(vcount(T_M05)^3.1))
plot(T_M05, l,rescale=T,vertex.size=V(T_M05)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M05)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M05)$pr))
     , edge.arrow.size=0.2*E(T_M05)$weight,main="Theoretical Module 5", sub=paste(V(mapTheoretical)$modulename[5]))

dev.off()
T_M05BB<-backboneNetwork(T_M05,0.000001,1)
V(T_M05BB)$pr<-V(T_M05)$pr
T_M05BB<-decompose.graph(T_M05BB,min.vertices = 2)[[1]]
V(T_M05BB)$type<-1
V(T_M05BB)$type[V(T_M05BB)$pr>=sort(V(T_M05BB)$pr,decreasing = T)[40]]<-3
pdf("T_M05BB.pdf",width=30,height=30)

e <- get.edgelist(T_M05BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M05BB), area=16*(vcount(T_M05BB)^2),repulse.rad=(vcount(T_M05BB)^4))
plot(T_M05BB, l,rescale=T,vertex.size=V(T_M05BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M05BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M05BB)$pr))
     , edge.arrow.size=0.2*E(T_M05BB)$weight,main="Theoretical Module 5 backbone", sub=paste(V(mapTheoretical)$modulename[5]))

dev.off()
###Theoretical 06
V(T_M06)$type<-1
V(T_M06)$type[V(T_M06)$pr>=sort(V(T_M06)$pr,decreasing = T)[40]]<-3
pdf("T_M06.pdf",width=30,height=30)

e <- get.edgelist(T_M06,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M06), area=8*(vcount(T_M06)^2),repulse.rad=(vcount(T_M06)^3.1))
plot(T_M06, l,rescale=T,vertex.size=V(T_M06)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M06)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M06)$pr))
     , edge.arrow.size=0.2*E(T_M06)$weight,main="Theoretical Module 6", sub=paste(V(mapTheoretical)$modulename[6]))

dev.off()
T_M06BB<-backboneNetwork(T_M06,0.000001,1)
V(T_M06BB)$pr<-V(T_M06)$pr
T_M06BB<-decompose.graph(T_M06BB,min.vertices = 2)[[1]]
V(T_M06BB)$type<-1
V(T_M06BB)$type[V(T_M06BB)$pr>=sort(V(T_M06BB)$pr,decreasing = T)[40]]<-3
pdf("T_M06BB.pdf",width=30,height=30)

e <- get.edgelist(T_M06BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M06BB), area=16*(vcount(T_M06BB)^2),repulse.rad=(vcount(T_M06BB)^4))
plot(T_M06BB, l,rescale=T,vertex.size=V(T_M06BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M06BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M06BB)$pr))
     , edge.arrow.size=0.2*E(T_M06BB)$weight,main="Theoretical Module 6 backbone", sub=paste(V(mapTheoretical)$modulename[6]))

dev.off()
###Theoretical 07
V(T_M07)$type<-1
V(T_M07)$type[V(T_M07)$pr>=sort(V(T_M07)$pr,decreasing = T)[40]]<-3
pdf("T_M07.pdf",width=30,height=30)

e <- get.edgelist(T_M07,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M07), area=8*(vcount(T_M07)^2),repulse.rad=(vcount(T_M07)^3.1))
plot(T_M07, l,rescale=T,vertex.size=V(T_M07)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M07)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M07)$pr))
     , edge.arrow.size=0.2*E(T_M07)$weight,main="Theoretical Module 7", sub=paste(V(mapTheoretical)$modulename[7]))

dev.off()
T_M07BB<-backboneNetwork(T_M07,0.000001,1)
V(T_M07BB)$pr<-V(T_M07)$pr
T_M07BB<-decompose.graph(T_M07BB,min.vertices = 2)[[1]]
V(T_M07BB)$type<-1
V(T_M07BB)$type[V(T_M07BB)$pr>=sort(V(T_M07BB)$pr,decreasing = T)[40]]<-3
pdf("T_M07BB.pdf",width=30,height=30)

e <- get.edgelist(T_M07BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M07BB), area=16*(vcount(T_M07BB)^2),repulse.rad=(vcount(T_M07BB)^4))
plot(T_M07BB, l,rescale=T,vertex.size=V(T_M07BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M07BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M07BB)$pr))
     , edge.arrow.size=0.2*E(T_M07BB)$weight,main="Theoretical Module 7 backbone", sub=paste(V(mapTheoretical)$modulename[7]))

dev.off()
###Theoretical 08
V(T_M08)$type<-1
V(T_M08)$type[V(T_M08)$pr>=sort(V(T_M08)$pr,decreasing = T)[40]]<-3
pdf("T_M08.pdf",width=30,height=30)

e <- get.edgelist(T_M08,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M08), area=8*(vcount(T_M08)^2),repulse.rad=(vcount(T_M08)^3.1))
plot(T_M08, l,rescale=T,vertex.size=V(T_M08)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M08)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M08)$pr))
     , edge.arrow.size=0.2*E(T_M08)$weight,main="Theoretical Module 8", sub=paste(V(mapTheoretical)$modulename[8]))

dev.off()
T_M08BB<-backboneNetwork(T_M08,0.000001,1)
V(T_M08BB)$pr<-V(T_M08)$pr
T_M08BB<-decompose.graph(T_M08BB,min.vertices = 2)[[1]]
V(T_M08BB)$type<-1
V(T_M08BB)$type[V(T_M08BB)$pr>=sort(V(T_M08BB)$pr,decreasing = T)[40]]<-3
pdf("T_M08BB.pdf",width=30,height=30)

e <- get.edgelist(T_M08BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M08BB), area=16*(vcount(T_M08BB)^2),repulse.rad=(vcount(T_M08BB)^4))
plot(T_M08BB, l,rescale=T,vertex.size=V(T_M08BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M08BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M08BB)$pr))
     , edge.arrow.size=0.2*E(T_M08BB)$weight,main="Theoretical Module 8 backbone", sub=paste(V(mapTheoretical)$modulename[8]))

dev.off()
###Theoretical 09
V(T_M09)$type<-1
V(T_M09)$type[V(T_M09)$pr>=sort(V(T_M09)$pr,decreasing = T)[40]]<-3
pdf("T_M09.pdf",width=30,height=30)

e <- get.edgelist(T_M09,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M09), area=8*(vcount(T_M09)^2),repulse.rad=(vcount(T_M09)^3.1))
plot(T_M09, l,rescale=T,vertex.size=V(T_M09)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M09)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M09)$pr))
     , edge.arrow.size=0.2*E(T_M09)$weight,main="Theoretical Module 9", sub=paste(V(mapTheoretical)$modulename[9]))

dev.off()
T_M09BB<-backboneNetwork(T_M09,0.000001,1)
V(T_M09BB)$pr<-V(T_M09)$pr
T_M09BB<-decompose.graph(T_M09BB,min.vertices = 2)[[1]]
V(T_M09BB)$type<-1
V(T_M09BB)$type[V(T_M09BB)$pr>=sort(V(T_M09BB)$pr,decreasing = T)[40]]<-3
pdf("T_M09BB.pdf",width=30,height=30)

e <- get.edgelist(T_M09BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M09BB), area=16*(vcount(T_M09BB)^2),repulse.rad=(vcount(T_M09BB)^4))
plot(T_M09BB, l,rescale=T,vertex.size=V(T_M09BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M09BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M09BB)$pr))
     , edge.arrow.size=0.2*E(T_M09BB)$weight,main="Theoretical Module 9 backbone", sub=paste(V(mapTheoretical)$modulename[9]))

dev.off()
###Theoretical 10
V(T_M10)$type<-1
V(T_M10)$type[V(T_M10)$pr>=sort(V(T_M10)$pr,decreasing = T)[40]]<-3
pdf("T_M10.pdf",width=30,height=30)

e <- get.edgelist(T_M10,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M10), area=8*(vcount(T_M10)^2),repulse.rad=(vcount(T_M10)^3.1))
plot(T_M10, l,rescale=T,vertex.size=V(T_M10)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M10)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M10)$pr))
     , edge.arrow.size=0.2*E(T_M10)$weight,main="Theoretical Module 10", sub=paste(V(mapTheoretical)$modulename[10]))

dev.off()
T_M10BB<-backboneNetwork(T_M10,0.000001,1)
V(T_M10BB)$pr<-V(T_M10)$pr
T_M10BB<-decompose.graph(T_M10BB,min.vertices = 2)[[1]]
V(T_M10BB)$type<-1
V(T_M10BB)$type[V(T_M10BB)$pr>=sort(V(T_M10BB)$pr,decreasing = T)[40]]<-3
pdf("T_M10BB.pdf",width=30,height=30)

e <- get.edgelist(T_M10BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M10BB), area=16*(vcount(T_M10BB)^2),repulse.rad=(vcount(T_M10BB)^4))
plot(T_M10BB, l,rescale=T,vertex.size=V(T_M10BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M10BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M10BB)$pr))
     , edge.arrow.size=0.2*E(T_M10BB)$weight,main="Theoretical Module 10 backbone", sub=paste(V(mapTheoretical)$modulename[10]))

dev.off()
###Theoretical 11
V(T_M11)$type<-1
V(T_M11)$type[V(T_M11)$pr>=sort(V(T_M11)$pr,decreasing = T)[40]]<-3
pdf("T_M11.pdf",width=30,height=30)

e <- get.edgelist(T_M11,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M11), area=8*(vcount(T_M11)^2),repulse.rad=(vcount(T_M11)^3.1))
plot(T_M11, l,rescale=T,vertex.size=V(T_M11)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M11)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M11)$pr))
     , edge.arrow.size=0.2*E(T_M11)$weight,main="Theoretical Module 11", sub=paste(V(mapTheoretical)$modulename[11]))

dev.off()
T_M11BB<-backboneNetwork(T_M11,0.000001,1)
V(T_M11BB)$pr<-V(T_M11)$pr
T_M11BB<-decompose.graph(T_M11BB,min.vertices = 2)[[1]]
V(T_M11BB)$type<-1
V(T_M11BB)$type[V(T_M11BB)$pr>=sort(V(T_M11BB)$pr,decreasing = T)[40]]<-3
pdf("T_M11BB.pdf",width=30,height=30)

e <- get.edgelist(T_M11BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M11BB), area=16*(vcount(T_M11BB)^2),repulse.rad=(vcount(T_M11BB)^4))
plot(T_M11BB, l,rescale=T,vertex.size=V(T_M11BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M11BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M11BB)$pr))
     , edge.arrow.size=0.2*E(T_M11BB)$weight,main="Theoretical Module 11 backbone", sub=paste(V(mapTheoretical)$modulename[11]))

dev.off()
###Theoretical 12
V(T_M12)$type<-1
V(T_M12)$type[V(T_M12)$pr>=sort(V(T_M12)$pr,decreasing = T)[40]]<-3
pdf("T_M12.pdf",width=30,height=30)

e <- get.edgelist(T_M12,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M12), area=8*(vcount(T_M12)^2),repulse.rad=(vcount(T_M12)^3.1))
plot(T_M12, l,rescale=T,vertex.size=V(T_M12)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M12)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M12)$pr))
     , edge.arrow.size=0.2*E(T_M12)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M12BB<-backboneNetwork(T_M12,0.000001,1)
V(T_M12BB)$pr<-V(T_M12)$pr
T_M12BB<-decompose.graph(T_M12BB,min.vertices = 2)[[1]]
V(T_M12BB)$type<-1
V(T_M12BB)$type[V(T_M12BB)$pr>=sort(V(T_M12BB)$pr,decreasing = T)[40]]<-3
pdf("T_M12BB.pdf",width=30,height=30)

e <- get.edgelist(T_M12BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M12BB), area=16*(vcount(T_M12BB)^2),repulse.rad=(vcount(T_M12BB)^4))
plot(T_M12BB, l,rescale=T,vertex.size=V(T_M12BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M12BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M12BB)$pr))
     , edge.arrow.size=0.2*E(T_M12BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 13
V(T_M13)$type<-1
V(T_M13)$type[V(T_M13)$pr>=sort(V(T_M13)$pr,decreasing = T)[40]]<-3
pdf("T_M13.pdf",width=30,height=30)

e <- get.edgelist(T_M13,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M13), area=8*(vcount(T_M13)^2),repulse.rad=(vcount(T_M13)^3.1))
plot(T_M13, l,rescale=T,vertex.size=V(T_M13)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M13)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M13)$pr))
     , edge.arrow.size=0.2*E(T_M13)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M13BB<-backboneNetwork(T_M13,0.000001,1)
V(T_M13BB)$pr<-V(T_M13)$pr
T_M13BB<-decompose.graph(T_M13BB,min.vertices = 2)[[1]]
V(T_M13BB)$type<-1
V(T_M13BB)$type[V(T_M13BB)$pr>=sort(V(T_M13BB)$pr,decreasing = T)[40]]<-3
pdf("T_M13BB.pdf",width=30,height=30)

e <- get.edgelist(T_M13BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M13BB), area=16*(vcount(T_M13BB)^2),repulse.rad=(vcount(T_M13BB)^4))
plot(T_M13BB, l,rescale=T,vertex.size=V(T_M13BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M13BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M13BB)$pr))
     , edge.arrow.size=0.2*E(T_M13BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 14
V(T_M14)$type<-1
V(T_M14)$type[V(T_M14)$pr>=sort(V(T_M14)$pr,decreasing = T)[40]]<-3
pdf("T_M14.pdf",width=30,height=30)

e <- get.edgelist(T_M14,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M14), area=8*(vcount(T_M14)^2),repulse.rad=(vcount(T_M14)^3.1))
plot(T_M14, l,rescale=T,vertex.size=V(T_M14)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M14)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M14)$pr))
     , edge.arrow.size=0.2*E(T_M14)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M14BB<-backboneNetwork(T_M14,0.000001,1)
V(T_M14BB)$pr<-V(T_M14)$pr
T_M14BB<-decompose.graph(T_M14BB,min.vertices = 2)[[1]]
V(T_M14BB)$type<-1
V(T_M14BB)$type[V(T_M14BB)$pr>=sort(V(T_M14BB)$pr,decreasing = T)[40]]<-3
pdf("T_M14BB.pdf",width=30,height=30)

e <- get.edgelist(T_M14BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M14BB), area=16*(vcount(T_M14BB)^2),repulse.rad=(vcount(T_M14BB)^4))
plot(T_M14BB, l,rescale=T,vertex.size=V(T_M14BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M14BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M14BB)$pr))
     , edge.arrow.size=0.2*E(T_M14BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 15
V(T_M15)$type<-1
V(T_M15)$type[V(T_M15)$pr>=sort(V(T_M15)$pr,decreasing = T)[40]]<-3
pdf("T_M15.pdf",width=30,height=30)

e <- get.edgelist(T_M15,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M15), area=8*(vcount(T_M15)^2),repulse.rad=(vcount(T_M15)^3.1))
plot(T_M15, l,rescale=T,vertex.size=V(T_M15)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M15)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M15)$pr))
     , edge.arrow.size=0.2*E(T_M15)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M15BB<-backboneNetwork(T_M15,0.000001,1)
V(T_M15BB)$pr<-V(T_M15)$pr
T_M15BB<-decompose.graph(T_M15BB,min.vertices = 2)[[1]]
V(T_M15BB)$type<-1
V(T_M15BB)$type[V(T_M15BB)$pr>=sort(V(T_M15BB)$pr,decreasing = T)[40]]<-3
pdf("T_M15BB.pdf",width=30,height=30)

e <- get.edgelist(T_M15BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M15BB), area=16*(vcount(T_M15BB)^2),repulse.rad=(vcount(T_M15BB)^4))
plot(T_M15BB, l,rescale=T,vertex.size=V(T_M15BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M15BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M15BB)$pr))
     , edge.arrow.size=0.2*E(T_M15BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 16
V(T_M16)$type<-1
V(T_M16)$type[V(T_M16)$pr>=sort(V(T_M16)$pr,decreasing = T)[40]]<-3
pdf("T_M16.pdf",width=30,height=30)

e <- get.edgelist(T_M16,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M16), area=8*(vcount(T_M16)^2),repulse.rad=(vcount(T_M16)^3.1))
plot(T_M16, l,rescale=T,vertex.size=V(T_M16)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M16)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M16)$pr))
     , edge.arrow.size=0.2*E(T_M16)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M16BB<-backboneNetwork(T_M16,0.000001,1)
V(T_M16BB)$pr<-V(T_M16)$pr
T_M16BB<-decompose.graph(T_M16BB,min.vertices = 2)[[1]]
V(T_M16BB)$type<-1
V(T_M16BB)$type[V(T_M16BB)$pr>=sort(V(T_M16BB)$pr,decreasing = T)[40]]<-3
pdf("T_M16BB.pdf",width=30,height=30)

e <- get.edgelist(T_M16BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M16BB), area=16*(vcount(T_M16BB)^2),repulse.rad=(vcount(T_M16BB)^4))
plot(T_M16BB, l,rescale=T,vertex.size=V(T_M16BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M16BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M16BB)$pr))
     , edge.arrow.size=0.2*E(T_M16BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 17
V(T_M17)$type<-1
V(T_M17)$type[V(T_M17)$pr>=sort(V(T_M17)$pr,decreasing = T)[40]]<-3
pdf("T_M17.pdf",width=30,height=30)

e <- get.edgelist(T_M17,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M17), area=8*(vcount(T_M17)^2),repulse.rad=(vcount(T_M17)^3.1))
plot(T_M17, l,rescale=T,vertex.size=V(T_M17)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M17)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M17)$pr))
     , edge.arrow.size=0.2*E(T_M17)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M17BB<-backboneNetwork(T_M17,0.000001,1)
V(T_M17BB)$pr<-V(T_M17)$pr
T_M17BB<-decompose.graph(T_M17BB,min.vertices = 2)[[1]]
V(T_M17BB)$type<-1
V(T_M17BB)$type[V(T_M17BB)$pr>=sort(V(T_M17BB)$pr,decreasing = T)[40]]<-3
pdf("T_M17BB.pdf",width=30,height=30)

e <- get.edgelist(T_M17BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M17BB), area=16*(vcount(T_M17BB)^2),repulse.rad=(vcount(T_M17BB)^4))
plot(T_M17BB, l,rescale=T,vertex.size=V(T_M17BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M17BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M17BB)$pr))
     , edge.arrow.size=0.2*E(T_M17BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 18
V(T_M18)$type<-1
V(T_M18)$type[V(T_M18)$pr>=sort(V(T_M18)$pr,decreasing = T)[40]]<-3
pdf("T_M18.pdf",width=30,height=30)

e <- get.edgelist(T_M18,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M18), area=8*(vcount(T_M18)^2),repulse.rad=(vcount(T_M18)^3.1))
plot(T_M18, l,rescale=T,vertex.size=V(T_M18)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M18)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M18)$pr))
     , edge.arrow.size=0.2*E(T_M18)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M18BB<-backboneNetwork(T_M18,0.000001,1)
V(T_M18BB)$pr<-V(T_M18)$pr
T_M18BB<-decompose.graph(T_M18BB,min.vertices = 2)[[1]]
V(T_M18BB)$type<-1
V(T_M18BB)$type[V(T_M18BB)$pr>=sort(V(T_M18BB)$pr,decreasing = T)[40]]<-3
pdf("T_M18BB.pdf",width=30,height=30)

e <- get.edgelist(T_M18BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M18BB), area=16*(vcount(T_M18BB)^2),repulse.rad=(vcount(T_M18BB)^4))
plot(T_M18BB, l,rescale=T,vertex.size=V(T_M18BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M18BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M18BB)$pr))
     , edge.arrow.size=0.2*E(T_M18BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 19
V(T_M19)$type<-1
V(T_M19)$type[V(T_M19)$pr>=sort(V(T_M19)$pr,decreasing = T)[40]]<-3
pdf("T_M19.pdf",width=30,height=30)

e <- get.edgelist(T_M19,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M19), area=8*(vcount(T_M19)^2),repulse.rad=(vcount(T_M19)^3.1))
plot(T_M19, l,rescale=T,vertex.size=V(T_M19)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M19)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M19)$pr))
     , edge.arrow.size=0.2*E(T_M19)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M19BB<-backboneNetwork(T_M19,0.000001,1)
V(T_M19BB)$pr<-V(T_M19)$pr
T_M19BB<-decompose.graph(T_M19BB,min.vertices = 2)[[1]]
V(T_M19BB)$type<-1
V(T_M19BB)$type[V(T_M19BB)$pr>=sort(V(T_M19BB)$pr,decreasing = T)[40]]<-3
pdf("T_M19BB.pdf",width=30,height=30)

e <- get.edgelist(T_M19BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M19BB), area=16*(vcount(T_M19BB)^2),repulse.rad=(vcount(T_M19BB)^4))
plot(T_M19BB, l,rescale=T,vertex.size=V(T_M19BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M19BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M19BB)$pr))
     , edge.arrow.size=0.2*E(T_M19BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 20
V(T_M20)$type<-1
V(T_M20)$type[V(T_M20)$pr>=sort(V(T_M20)$pr,decreasing = T)[40]]<-3
pdf("T_M20.pdf",width=30,height=30)

e <- get.edgelist(T_M20,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M20), area=8*(vcount(T_M20)^2),repulse.rad=(vcount(T_M20)^3.1))
plot(T_M20, l,rescale=T,vertex.size=V(T_M20)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M20)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M20)$pr))
     , edge.arrow.size=0.2*E(T_M20)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M20BB<-backboneNetwork(T_M20,0.000001,1)
V(T_M20BB)$pr<-V(T_M20)$pr
T_M20BB<-decompose.graph(T_M20BB,min.vertices = 2)[[1]]
V(T_M20BB)$type<-1
V(T_M20BB)$type[V(T_M20BB)$pr>=sort(V(T_M20BB)$pr,decreasing = T)[40]]<-3
pdf("T_M20BB.pdf",width=30,height=30)

e <- get.edgelist(T_M20BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M20BB), area=16*(vcount(T_M20BB)^2),repulse.rad=(vcount(T_M20BB)^4))
plot(T_M20BB, l,rescale=T,vertex.size=V(T_M20BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M20BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M20BB)$pr))
     , edge.arrow.size=0.2*E(T_M20BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 21
V(T_M21)$type<-1
V(T_M21)$type[V(T_M21)$pr>=sort(V(T_M21)$pr,decreasing = T)[40]]<-3
pdf("T_M21.pdf",width=30,height=30)

e <- get.edgelist(T_M21,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M21), area=8*(vcount(T_M21)^2),repulse.rad=(vcount(T_M21)^3.1))
plot(T_M21, l,rescale=T,vertex.size=V(T_M21)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M21)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M21)$pr))
     , edge.arrow.size=0.2*E(T_M21)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M21BB<-backboneNetwork(T_M21,0.000001,1)
V(T_M21BB)$pr<-V(T_M21)$pr
T_M21BB<-decompose.graph(T_M21BB,min.vertices = 2)[[1]]
V(T_M21BB)$type<-1
V(T_M21BB)$type[V(T_M21BB)$pr>=sort(V(T_M21BB)$pr,decreasing = T)[40]]<-3
pdf("T_M21BB.pdf",width=30,height=30)

e <- get.edgelist(T_M21BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M21BB), area=16*(vcount(T_M21BB)^2),repulse.rad=(vcount(T_M21BB)^4))
plot(T_M21BB, l,rescale=T,vertex.size=V(T_M21BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M21BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M21BB)$pr))
     , edge.arrow.size=0.2*E(T_M21BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 22
V(T_M22)$type<-1
V(T_M22)$type[V(T_M22)$pr>=sort(V(T_M22)$pr,decreasing = T)[40]]<-3
pdf("T_M22.pdf",width=30,height=30)

e <- get.edgelist(T_M22,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M22), area=8*(vcount(T_M22)^2),repulse.rad=(vcount(T_M22)^3.1))
plot(T_M22, l,rescale=T,vertex.size=V(T_M22)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M22)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M22)$pr))
     , edge.arrow.size=0.2*E(T_M22)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M22BB<-backboneNetwork(T_M22,0.000001,1)
V(T_M22BB)$pr<-V(T_M22)$pr
T_M22BB<-decompose.graph(T_M22BB,min.vertices = 2)[[1]]
V(T_M22BB)$type<-1
V(T_M22BB)$type[V(T_M22BB)$pr>=sort(V(T_M22BB)$pr,decreasing = T)[40]]<-3
pdf("T_M22BB.pdf",width=30,height=30)

e <- get.edgelist(T_M22BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M22BB), area=16*(vcount(T_M22BB)^2),repulse.rad=(vcount(T_M22BB)^4))
plot(T_M22BB, l,rescale=T,vertex.size=V(T_M22BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M22BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M22BB)$pr))
     , edge.arrow.size=0.2*E(T_M22BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 23
V(T_M23)$type<-1
V(T_M23)$type[V(T_M23)$pr>=sort(V(T_M23)$pr,decreasing = T)[40]]<-3
pdf("T_M23.pdf",width=30,height=30)

e <- get.edgelist(T_M23,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M23), area=8*(vcount(T_M23)^2),repulse.rad=(vcount(T_M23)^3.1))
plot(T_M23, l,rescale=T,vertex.size=V(T_M23)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M23)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M23)$pr))
     , edge.arrow.size=0.2*E(T_M23)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M23BB<-backboneNetwork(T_M23,0.000001,1)
V(T_M23BB)$pr<-V(T_M23)$pr
T_M23BB<-decompose.graph(T_M23BB,min.vertices = 2)[[1]]
V(T_M23BB)$type<-1
V(T_M23BB)$type[V(T_M23BB)$pr>=sort(V(T_M23BB)$pr,decreasing = T)[40]]<-3
pdf("T_M23BB.pdf",width=30,height=30)

e <- get.edgelist(T_M23BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M23BB), area=16*(vcount(T_M23BB)^2),repulse.rad=(vcount(T_M23BB)^4))
plot(T_M23BB, l,rescale=T,vertex.size=V(T_M23BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M23BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M23BB)$pr))
     , edge.arrow.size=0.2*E(T_M23BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
###Theoretical 24
V(T_M24)$type<-1
V(T_M24)$type[V(T_M24)$pr>=sort(V(T_M24)$pr,decreasing = T)[40]]<-3
pdf("T_M24.pdf",width=30,height=30)

e <- get.edgelist(T_M24,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M24), area=8*(vcount(T_M24)^2),repulse.rad=(vcount(T_M24)^3.1))
plot(T_M24, l,rescale=T,vertex.size=V(T_M24)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M24)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M24)$pr))
     , edge.arrow.size=0.2*E(T_M24)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M24BB<-backboneNetwork(T_M24,0.000001,1)
V(T_M24BB)$pr<-V(T_M24)$pr
T_M24BB<-decompose.graph(T_M24BB,min.vertices = 2)[[1]]
V(T_M24BB)$type<-1
V(T_M24BB)$type[V(T_M24BB)$pr>=sort(V(T_M24BB)$pr,decreasing = T)[40]]<-3
pdf("T_M24BB.pdf",width=30,height=30)

e <- get.edgelist(T_M24BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M24BB), area=16*(vcount(T_M24BB)^2),repulse.rad=(vcount(T_M24BB)^4))
plot(T_M24BB, l,rescale=T,vertex.size=V(T_M24BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M24BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M24BB)$pr))
     , edge.arrow.size=0.2*E(T_M24BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()

###Theoretical 25
V(T_M25)$type<-1
V(T_M25)$type[V(T_M25)$pr>=sort(V(T_M25)$pr,decreasing = T)[40]]<-3
pdf("T_M25.pdf",width=30,height=30)

e <- get.edgelist(T_M25,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M25), area=8*(vcount(T_M25)^2),repulse.rad=(vcount(T_M25)^3.1))
plot(T_M25, l,rescale=T,vertex.size=V(T_M25)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M25)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M25)$pr))
     , edge.arrow.size=0.2*E(T_M25)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M25BB<-backboneNetwork(T_M25,0.000001,1)
V(T_M25BB)$pr<-V(T_M25)$pr
T_M25BB<-decompose.graph(T_M25BB,min.vertices = 2)[[1]]
V(T_M25BB)$type<-1
V(T_M25BB)$type[V(T_M25BB)$pr>=sort(V(T_M25BB)$pr,decreasing = T)[40]]<-3
pdf("T_M25BB.pdf",width=30,height=30)

e <- get.edgelist(T_M25BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M25BB), area=16*(vcount(T_M25BB)^2),repulse.rad=(vcount(T_M25BB)^4))
plot(T_M25BB, l,rescale=T,vertex.size=V(T_M25BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M25BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M25BB)$pr))
     , edge.arrow.size=0.2*E(T_M25BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()

###Theoretical 26
V(T_M26)$type<-1
V(T_M26)$type[V(T_M26)$pr>=sort(V(T_M26)$pr,decreasing = T)[40]]<-3
pdf("T_M26.pdf",width=30,height=30)

e <- get.edgelist(T_M26,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M26), area=8*(vcount(T_M26)^2),repulse.rad=(vcount(T_M26)^3.1))
plot(T_M26, l,rescale=T,vertex.size=V(T_M26)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M26)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M26)$pr))
     , edge.arrow.size=0.2*E(T_M26)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M26BB<-backboneNetwork(T_M26,0.000001,1)
V(T_M26BB)$pr<-V(T_M26)$pr
T_M26BB<-decompose.graph(T_M26BB,min.vertices = 2)[[1]]
V(T_M26BB)$type<-1
V(T_M26BB)$type[V(T_M26BB)$pr>=sort(V(T_M26BB)$pr,decreasing = T)[40]]<-3
pdf("T_M26BB.pdf",width=30,height=30)

e <- get.edgelist(T_M26BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M26BB), area=16*(vcount(T_M26BB)^2),repulse.rad=(vcount(T_M26BB)^4))
plot(T_M26BB, l,rescale=T,vertex.size=V(T_M26BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M26BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M26BB)$pr))
     , edge.arrow.size=0.2*E(T_M26BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()

###Theoretical 27
V(T_M27)$type<-1
V(T_M27)$type[V(T_M27)$pr>=sort(V(T_M27)$pr,decreasing = T)[40]]<-3
pdf("T_M27.pdf",width=30,height=30)

e <- get.edgelist(T_M27,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M27), area=8*(vcount(T_M27)^2),repulse.rad=(vcount(T_M27)^3.1))
plot(T_M27, l,rescale=T,vertex.size=V(T_M27)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M27)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M27)$pr))
     , edge.arrow.size=0.2*E(T_M27)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M27BB<-backboneNetwork(T_M27,0.000001,1)
V(T_M27BB)$pr<-V(T_M27)$pr
T_M27BB<-decompose.graph(T_M27BB,min.vertices = 2)[[1]]
V(T_M27BB)$type<-1
V(T_M27BB)$type[V(T_M27BB)$pr>=sort(V(T_M27BB)$pr,decreasing = T)[40]]<-3
pdf("T_M27BB.pdf",width=30,height=30)

e <- get.edgelist(T_M27BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M27BB), area=16*(vcount(T_M27BB)^2),repulse.rad=(vcount(T_M27BB)^4))
plot(T_M27BB, l,rescale=T,vertex.size=V(T_M27BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M27BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M27BB)$pr))
     , edge.arrow.size=0.2*E(T_M27BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()

###Theoretical 28
V(T_M28)$type<-1
V(T_M28)$type[V(T_M28)$pr>=sort(V(T_M28)$pr,decreasing = T)[40]]<-3
pdf("T_M28.pdf",width=30,height=30)

e <- get.edgelist(T_M28,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M28), area=8*(vcount(T_M28)^2),repulse.rad=(vcount(T_M28)^3.1))
plot(T_M28, l,rescale=T,vertex.size=V(T_M28)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(T_M28)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M28)$pr))
     , edge.arrow.size=0.2*E(T_M28)$weight,main="Theoretical Module 1", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()
T_M28BB<-backboneNetwork(T_M28,0.000001,1)
V(T_M28BB)$pr<-V(T_M28)$pr
T_M28BB<-decompose.graph(T_M28BB,min.vertices = 2)[[1]]
V(T_M28BB)$type<-1
V(T_M28BB)$type[V(T_M28BB)$pr>=sort(V(T_M28BB)$pr,decreasing = T)[40]]<-3
pdf("T_M28BB.pdf",width=30,height=30)

e <- get.edgelist(T_M28BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(T_M28BB), area=16*(vcount(T_M28BB)^2),repulse.rad=(vcount(T_M28BB)^4))
plot(T_M28BB, l,rescale=T,vertex.size=V(T_M28BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(T_M28BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(T_M28BB)$pr))
     , edge.arrow.size=0.2*E(T_M28BB)$weight,main="Theoretical Module 1 backbone", sub=paste(V(mapTheoretical)$modulename[1]))

dev.off()

###EMPIRICAL
#Empirical Module 01
V(E_M01)$type<-1
V(E_M01)$type[V(E_M01)$pr>=sort(V(E_M01)$pr,decreasing = T)[40]]<-3
pdf("E_M01.pdf",width=30,height=30)

e <- get.edgelist(E_M01,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M01), area=8*(vcount(E_M01)^2),repulse.rad=(vcount(E_M01)^3.1))
plot(E_M01, l,rescale=T,vertex.size=V(E_M01)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M01)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M01)$pr))
     , edge.arrow.size=E(E_M01)$weight,main="Empirical Module 1", sub=paste(V(mapEmpirical)$modulename[1]))

dev.off()
E_M01BB<-backboneNetwork(E_M01,0.000001,1)
V(E_M01BB)$pr<-V(E_M01)$pr
E_M01BB<-decompose.graph(E_M01BB,min.vertices = 2)[[1]]
V(E_M01BB)$type<-1
V(E_M01BB)$type[V(E_M01BB)$pr>=sort(V(E_M01BB)$pr,decreasing = T)[40]]<-3
pdf("E_M01BB.pdf",width=30,height=30)

e <- get.edgelist(E_M01BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M01BB), area=16*(vcount(E_M01BB)^2),repulse.rad=(vcount(E_M01BB)^4))
plot(E_M01BB, l,rescale=T,vertex.size=V(E_M01BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M01BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M01BB)$pr))
     , edge.arrow.size=0.3*E(E_M01BB)$weight,main="Empirical Module 1 backbone", sub=paste(V(mapEmpirical)$modulename[1]))

dev.off()


V(E_M02)$type<-1
V(E_M02)$type[V(E_M02)$pr>=sort(V(E_M02)$pr,decreasing = T)[40]]<-3
pdf("E_M02.pdf",width=30,height=30)

e <- get.edgelist(E_M02,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M02), area=8*(vcount(E_M02)^2),repulse.rad=(vcount(E_M02)^3.1))
plot(E_M02, l,rescale=T,vertex.size=V(E_M02)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M02)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M02)$pr))
     , edge.arrow.size=E(E_M02)$weight,main="Empirical Module 2", sub=paste(V(mapEmpirical)$modulename[2]))

dev.off()
E_M02BB<-backboneNetwork(E_M02,0.000001,1)
V(E_M02BB)$pr<-V(E_M02)$pr
E_M02BB<-decompose.graph(E_M02BB,min.vertices = 2)[[1]]
V(E_M02BB)$type<-1
V(E_M02BB)$type[V(E_M02BB)$pr>=sort(V(E_M02BB)$pr,decreasing = T)[40]]<-3
pdf("E_M02BB.pdf",width=30,height=30)

e <- get.edgelist(E_M02BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M02BB), area=16*(vcount(E_M02BB)^2),repulse.rad=(vcount(E_M02BB)^4))
plot(E_M02BB, l,rescale=T,vertex.size=V(E_M02BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M02BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M02BB)$pr))
     , edge.arrow.size=0.3*E(E_M02BB)$weight,main="Empirical Module 2 backbone", sub=paste(V(mapEmpirical)$modulename[2]))

dev.off()


V(E_M03)$type<-1
V(E_M03)$type[V(E_M03)$pr>=sort(V(E_M03)$pr,decreasing = T)[40]]<-3
pdf("E_M03.pdf",width=30,height=30)

e <- get.edgelist(E_M03,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M03), area=8*(vcount(E_M03)^2),repulse.rad=(vcount(E_M03)^3.1))
plot(E_M03, l,rescale=T,vertex.size=V(E_M03)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M03)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M03)$pr))
     , edge.arrow.size=E(E_M03)$weight,main="Empirical Module 3", sub=paste(V(mapEmpirical)$modulename[3]))

dev.off()
E_M03BB<-backboneNetwork(E_M03,0.000001,1)
V(E_M03BB)$pr<-V(E_M03)$pr
E_M03BB<-decompose.graph(E_M03BB,min.vertices = 2)[[1]]
V(E_M03BB)$type<-1
V(E_M03BB)$type[V(E_M03BB)$pr>=sort(V(E_M03BB)$pr,decreasing = T)[40]]<-3
pdf("E_M03BB.pdf",width=30,height=30)

e <- get.edgelist(E_M03BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M03BB), area=16*(vcount(E_M03BB)^2),repulse.rad=(vcount(E_M03BB)^4))
plot(E_M03BB, l,rescale=T,vertex.size=V(E_M03BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M03BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M03BB)$pr))
     , edge.arrow.size=0.3*E(E_M03BB)$weight,main="Empirical Module 3 backbone", sub=paste(V(mapEmpirical)$modulename[3]))

dev.off()


###Empirical 04
V(E_M04)$type<-1
V(E_M04)$type[V(E_M04)$pr>=sort(V(E_M04)$pr,decreasing = T)[40]]<-3
pdf("E_M04.pdf",width=30,height=30)

e <- get.edgelist(E_M04,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M04), area=8*(vcount(E_M04)^2),repulse.rad=(vcount(E_M04)^3.1))
plot(E_M04, l,rescale=T,vertex.size=V(E_M04)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M04)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M04)$pr))
     , edge.arrow.size=0.2*E(E_M04)$weight,main="Empirical Module 4", sub=paste(V(mapEmpirical)$modulename[4]))

dev.off()
E_M04BB<-backboneNetwork(E_M04,0.000001,1)
V(E_M04BB)$pr<-V(E_M04)$pr
E_M04BB<-decompose.graph(E_M04BB,min.vertices = 2)[[1]]
V(E_M04BB)$type<-1
V(E_M04BB)$type[V(E_M04BB)$pr>=sort(V(E_M04BB)$pr,decreasing = T)[40]]<-3
pdf("E_M04BB.pdf",width=30,height=30)

e <- get.edgelist(E_M04BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M04BB), area=16*(vcount(E_M04BB)^2),repulse.rad=(vcount(E_M04BB)^4))
plot(E_M04BB, l,rescale=T,vertex.size=V(E_M04BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M04BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M04BB)$pr))
     , edge.arrow.size=0.2*E(E_M04BB)$weight,main="Empirical Module 4 backbone", sub=paste(V(mapEmpirical)$modulename[4]))

dev.off()

###Empirical 05
V(E_M05)$type<-1
V(E_M05)$type[V(E_M05)$pr>=sort(V(E_M05)$pr,decreasing = T)[40]]<-3
pdf("E_M05.pdf",width=30,height=30)

e <- get.edgelist(E_M05,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M05), area=8*(vcount(E_M05)^2),repulse.rad=(vcount(E_M05)^3.1))
plot(E_M05, l,rescale=T,vertex.size=V(E_M05)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M05)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M05)$pr))
     , edge.arrow.size=0.2*E(E_M05)$weight,main="Empirical Module 5", sub=paste(V(mapEmpirical)$modulename[5]))

dev.off()
E_M05BB<-backboneNetwork(E_M05,0.000001,1)
V(E_M05BB)$pr<-V(E_M05)$pr
E_M05BB<-decompose.graph(E_M05BB,min.vertices = 2)[[1]]
V(E_M05BB)$type<-1
V(E_M05BB)$type[V(E_M05BB)$pr>=sort(V(E_M05BB)$pr,decreasing = T)[40]]<-3
pdf("E_M05BB.pdf",width=30,height=30)

e <- get.edgelist(E_M05BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M05BB), area=16*(vcount(E_M05BB)^2),repulse.rad=(vcount(E_M05BB)^4))
plot(E_M05BB, l,rescale=T,vertex.size=V(E_M05BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M05BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M05BB)$pr))
     , edge.arrow.size=0.2*E(E_M05BB)$weight,main="Empirical Module 5 backbone", sub=paste(V(mapEmpirical)$modulename[5]))

dev.off()
###Empirical 06
V(E_M06)$type<-1
V(E_M06)$type[V(E_M06)$pr>=sort(V(E_M06)$pr,decreasing = T)[40]]<-3
pdf("E_M06.pdf",width=30,height=30)

e <- get.edgelist(E_M06,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M06), area=8*(vcount(E_M06)^2),repulse.rad=(vcount(E_M06)^3.1))
plot(E_M06, l,rescale=T,vertex.size=V(E_M06)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M06)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M06)$pr))
     , edge.arrow.size=0.2*E(E_M06)$weight,main="Empirical Module 6", sub=paste(V(mapEmpirical)$modulename[6]))

dev.off()
E_M06BB<-backboneNetwork(E_M06,0.000001,1)
V(E_M06BB)$pr<-V(E_M06)$pr
E_M06BB<-decompose.graph(E_M06BB,min.vertices = 2)[[1]]
V(E_M06BB)$type<-1
V(E_M06BB)$type[V(E_M06BB)$pr>=sort(V(E_M06BB)$pr,decreasing = T)[40]]<-3
pdf("E_M06BB.pdf",width=30,height=30)

e <- get.edgelist(E_M06BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M06BB), area=16*(vcount(E_M06BB)^2),repulse.rad=(vcount(E_M06BB)^4))
plot(E_M06BB, l,rescale=T,vertex.size=V(E_M06BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M06BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M06BB)$pr))
     , edge.arrow.size=0.2*E(E_M06BB)$weight,main="Empirical Module 6 backbone", sub=paste(V(mapEmpirical)$modulename[6]))

dev.off()
###Empirical 07
V(E_M07)$type<-1
V(E_M07)$type[V(E_M07)$pr>=sort(V(E_M07)$pr,decreasing = T)[40]]<-3
pdf("E_M07.pdf",width=30,height=30)

e <- get.edgelist(E_M07,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M07), area=8*(vcount(E_M07)^2),repulse.rad=(vcount(E_M07)^3.1))
plot(E_M07, l,rescale=T,vertex.size=V(E_M07)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M07)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M07)$pr))
     , edge.arrow.size=0.2*E(E_M07)$weight,main="Empirical Module 7", sub=paste(V(mapEmpirical)$modulename[7]))

dev.off()
E_M07BB<-backboneNetwork(E_M07,0.000001,1)
V(E_M07BB)$pr<-V(E_M07)$pr
E_M07BB<-decompose.graph(E_M07BB,min.vertices = 2)[[1]]
V(E_M07BB)$type<-1
V(E_M07BB)$type[V(E_M07BB)$pr>=sort(V(E_M07BB)$pr,decreasing = T)[40]]<-3
pdf("E_M07BB.pdf",width=30,height=30)

e <- get.edgelist(E_M07BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M07BB), area=16*(vcount(E_M07BB)^2),repulse.rad=(vcount(E_M07BB)^4))
plot(E_M07BB, l,rescale=T,vertex.size=V(E_M07BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M07BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M07BB)$pr))
     , edge.arrow.size=0.2*E(E_M07BB)$weight,main="Empirical Module 7 backbone", sub=paste(V(mapEmpirical)$modulename[7]))

dev.off()
###Empirical 08
V(E_M08)$type<-1
V(E_M08)$type[V(E_M08)$pr>=sort(V(E_M08)$pr,decreasing = T)[40]]<-3
pdf("E_M08.pdf",width=30,height=30)

e <- get.edgelist(E_M08,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M08), area=8*(vcount(E_M08)^2),repulse.rad=(vcount(E_M08)^3.1))
plot(E_M08, l,rescale=T,vertex.size=V(E_M08)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M08)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M08)$pr))
     , edge.arrow.size=0.2*E(E_M08)$weight,main="Empirical Module 8", sub=paste(V(mapEmpirical)$modulename[8]))

dev.off()
E_M08BB<-backboneNetwork(E_M08,0.000001,1)
V(E_M08BB)$pr<-V(E_M08)$pr
E_M08BB<-decompose.graph(E_M08BB,min.vertices = 2)[[1]]
V(E_M08BB)$type<-1
V(E_M08BB)$type[V(E_M08BB)$pr>=sort(V(E_M08BB)$pr,decreasing = T)[40]]<-3
pdf("E_M08BB.pdf",width=30,height=30)

e <- get.edgelist(E_M08BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M08BB), area=16*(vcount(E_M08BB)^2),repulse.rad=(vcount(E_M08BB)^4))
plot(E_M08BB, l,rescale=T,vertex.size=V(E_M08BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M08BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M08BB)$pr))
     , edge.arrow.size=0.2*E(E_M08BB)$weight,main="Empirical Module 8 backbone", sub=paste(V(mapEmpirical)$modulename[8]))

dev.off()
###Empirical 09
V(E_M09)$type<-1
V(E_M09)$type[V(E_M09)$pr>=sort(V(E_M09)$pr,decreasing = T)[40]]<-3
pdf("E_M09.pdf",width=30,height=30)

e <- get.edgelist(E_M09,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M09), area=8*(vcount(E_M09)^2),repulse.rad=(vcount(E_M09)^3.1))
plot(E_M09, l,rescale=T,vertex.size=V(E_M09)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M09)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M09)$pr))
     , edge.arrow.size=0.2*E(E_M09)$weight,main="Empirical Module 9", sub=paste(V(mapEmpirical)$modulename[9]))

dev.off()
E_M09BB<-backboneNetwork(E_M09,0.000001,1)
V(E_M09BB)$pr<-V(E_M09)$pr
E_M09BB<-decompose.graph(E_M09BB,min.vertices = 2)[[1]]
V(E_M09BB)$type<-1
V(E_M09BB)$type[V(E_M09BB)$pr>=sort(V(E_M09BB)$pr,decreasing = T)[40]]<-3
pdf("E_M09BB.pdf",width=30,height=30)

e <- get.edgelist(E_M09BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M09BB), area=16*(vcount(E_M09BB)^2),repulse.rad=(vcount(E_M09BB)^4))
plot(E_M09BB, l,rescale=T,vertex.size=V(E_M09BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M09BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M09BB)$pr))
     , edge.arrow.size=0.2*E(E_M09BB)$weight,main="Empirical Module 9 backbone", sub=paste(V(mapEmpirical)$modulename[9]))

dev.off()
###Empirical 10
V(E_M10)$type<-1
V(E_M10)$type[V(E_M10)$pr>=sort(V(E_M10)$pr,decreasing = T)[40]]<-3
pdf("E_M10.pdf",width=30,height=30)

e <- get.edgelist(E_M10,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M10), area=8*(vcount(E_M10)^2),repulse.rad=(vcount(E_M10)^3.1))
plot(E_M10, l,rescale=T,vertex.size=V(E_M10)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M10)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M10)$pr))
     , edge.arrow.size=0.2*E(E_M10)$weight,main="Empirical Module 10", sub=paste(V(mapEmpirical)$modulename[10]))

dev.off()
E_M10BB<-backboneNetwork(E_M10,0.000001,1)
V(E_M10BB)$pr<-V(E_M10)$pr
E_M10BB<-decompose.graph(E_M10BB,min.vertices = 2)[[1]]
V(E_M10BB)$type<-1
V(E_M10BB)$type[V(E_M10BB)$pr>=sort(V(E_M10BB)$pr,decreasing = T)[40]]<-3
pdf("E_M10BB.pdf",width=30,height=30)

e <- get.edgelist(E_M10BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M10BB), area=16*(vcount(E_M10BB)^2),repulse.rad=(vcount(E_M10BB)^4))
plot(E_M10BB, l,rescale=T,vertex.size=V(E_M10BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M10BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M10BB)$pr))
     , edge.arrow.size=0.2*E(E_M10BB)$weight,main="Empirical Module 10 backbone", sub=paste(V(mapEmpirical)$modulename[10]))

dev.off()
###Empirical 11
V(E_M11)$type<-1
V(E_M11)$type[V(E_M11)$pr>=sort(V(E_M11)$pr,decreasing = T)[40]]<-3
pdf("E_M11.pdf",width=30,height=30)

e <- get.edgelist(E_M11,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M11), area=8*(vcount(E_M11)^2),repulse.rad=(vcount(E_M11)^3.1))
plot(E_M11, l,rescale=T,vertex.size=V(E_M11)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M11)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M11)$pr))
     , edge.arrow.size=0.2*E(E_M11)$weight,main="Empirical Module 11", sub=paste(V(mapEmpirical)$modulename[11]))

dev.off()
E_M11BB<-backboneNetwork(E_M11,0.000001,1)
V(E_M11BB)$pr<-V(E_M11)$pr
E_M11BB<-decompose.graph(E_M11BB,min.vertices = 2)[[1]]
V(E_M11BB)$type<-1
V(E_M11BB)$type[V(E_M11BB)$pr>=sort(V(E_M11BB)$pr,decreasing = T)[40]]<-3
pdf("E_M11BB.pdf",width=30,height=30)

e <- get.edgelist(E_M11BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M11BB), area=16*(vcount(E_M11BB)^2),repulse.rad=(vcount(E_M11BB)^4))
plot(E_M11BB, l,rescale=T,vertex.size=V(E_M11BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M11BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M11BB)$pr))
     , edge.arrow.size=0.2*E(E_M11BB)$weight,main="Empirical Module 11 backbone", sub=paste(V(mapEmpirical)$modulename[11]))

dev.off()
###Empirical 12
V(E_M12)$type<-1
V(E_M12)$type[V(E_M12)$pr>=sort(V(E_M12)$pr,decreasing = T)[40]]<-3
pdf("E_M12.pdf",width=30,height=30)

e <- get.edgelist(E_M12,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M12), area=8*(vcount(E_M12)^2),repulse.rad=(vcount(E_M12)^3.1))
plot(E_M12, l,rescale=T,vertex.size=V(E_M12)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M12)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M12)$pr))
     , edge.arrow.size=0.2*E(E_M12)$weight,main="Empirical Module 1", sub=paste(V(mapEmpirical)$modulename[1]))

dev.off()
E_M12BB<-backboneNetwork(E_M12,0.000001,1)
V(E_M12BB)$pr<-V(E_M12)$pr
E_M12BB<-decompose.graph(E_M12BB,min.vertices = 2)[[1]]
V(E_M12BB)$type<-1
V(E_M12BB)$type[V(E_M12BB)$pr>=sort(V(E_M12BB)$pr,decreasing = T)[40]]<-3
pdf("E_M12BB.pdf",width=30,height=30)

e <- get.edgelist(E_M12BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M12BB), area=16*(vcount(E_M12BB)^2),repulse.rad=(vcount(E_M12BB)^4))
plot(E_M12BB, l,rescale=T,vertex.size=V(E_M12BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M12BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M12BB)$pr))
     , edge.arrow.size=0.2*E(E_M12BB)$weight,main="Empirical Module 1 backbone", sub=paste(V(mapEmpirical)$modulename[1]))

dev.off()
###Empirical 13
V(E_M13)$type<-1
V(E_M13)$type[V(E_M13)$pr>=sort(V(E_M13)$pr,decreasing = T)[40]]<-3
pdf("E_M13.pdf",width=30,height=30)

e <- get.edgelist(E_M13,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M13), area=8*(vcount(E_M13)^2),repulse.rad=(vcount(E_M13)^3.1))
plot(E_M13, l,rescale=T,vertex.size=V(E_M13)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=0.4*E(E_M13)$weight, vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M13)$pr))
     , edge.arrow.size=0.2*E(E_M13)$weight,main="Empirical Module 1", sub=paste(V(mapEmpirical)$modulename[1]))

dev.off()
E_M13BB<-backboneNetwork(E_M13,0.000001,1)
V(E_M13BB)$pr<-V(E_M13)$pr
E_M13BB<-decompose.graph(E_M13BB,min.vertices = 2)[[1]]
V(E_M13BB)$type<-1
V(E_M13BB)$type[V(E_M13BB)$pr>=sort(V(E_M13BB)$pr,decreasing = T)[40]]<-3
pdf("E_M13BB.pdf",width=30,height=30)

e <- get.edgelist(E_M13BB,names=F)
l <- qgraph.layout.fruchtermanreingold(e,vcount=vcount(E_M13BB), area=16*(vcount(E_M13BB)^2),repulse.rad=(vcount(E_M13BB)^4))
plot(E_M13BB, l,rescale=T,vertex.size=V(E_M13BB)$type,vertex.label.cex=0.9,vertex.label.color="black",vertex.label.family="sans",
     edge.width=2*log(E(E_M13BB)$weight+1), vertex.frame.color=NA,vertex.color=heat.colors(round(100000*V(E_M13BB)$pr))
     , edge.arrow.size=0.2*E(E_M13BB)$weight,main="Empirical Module 1 backbone", sub=paste(V(mapEmpirical)$modulename[1]))

dev.off()