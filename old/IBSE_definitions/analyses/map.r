allNet<-read.graph("allNetBB_nodes.graphml",format="graphml")
fastgreedy<-V(allNet)$fastgreedy
M<-length(unique(fastgreedy))
Wij<-function(j){
M<-length(unique(fastgreedy))
m<-which(fastgreedy==j)
dfm<-data.frame()

for(i in 1:length(m)){
  x<-incident(allNet,m[i],mode="in")
a<-ends(allNet, x,names=F)

b<-get.edge.attribute(allNet,name="weight",x)
c<-fastgreedy[a[,1]]
dfm<-rbind(dfm,data.frame(a,weight=b,module=c))

}


V<-vector()
for(l in 1:M){ 
V[l]<-sum(dfm$weight[dfm$module==l])
}

return(V)

}

W<-matrix(NA,ncol=M,nrow=M)
for(j in 1:length(unique(fastgreedy))){
W[j,]<-Wij(j)
}

name<-c("take->place","similar->structure","construct explanation","Open ended requires student support","Learning science through inquiry","Prior knowledge connected to new content knowledge","Authentic hands on experience activities","Critical thinking","Early childhood experiential education","Instructing models through 5E","Ask questions and make observations","(no relationships of interest 1)","Young child explore"," (no relationships of interest)","Problem solving","Confirm previous result","(No strong relationships 1)","(No strong relationships 2)","Deweys definition ","( Ser meget m??rkelig ud?)","section","psillosetal2004","loosvanorden2005")
g<-graph.adjacency(W,mode=c("directed"),weighted = T,diag = F)
V(g)$name<-name
gbb<-backboneNetwork(g,0.10,1)

V(g)$id<-c(1:23)
V(g)$n_words<-as.vector(table(fastgreedy))
V(g)$internalConnections<-diag(W)

V(gbb)$n_words<-V(g)$n_words
V(gbb)$internalConnections<-V(g)$internalConnections
V(gbb)$name<-V(g)$name
write.graph(g,"map.graphml",format="graphml")
write.graph(gbb,"mapBB.graphml",format="graphml")
grem<-delete.vertices(g,5)
grembb<-backboneNetwork(grem,0.05,1)
V(grembb)$n_words<-V(grem)$n_words
V(grembb)$internalConnections<-V(grem)$internalConnections
V(grembb)$name<-V(grem)$name

write.graph(grembb,"mapBB_u5.graphml",format="graphml")
write.graph(grem,"map_u5.graphml",format="graphml")
