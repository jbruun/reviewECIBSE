#LOAD OF ARTICLE ON ALLNET

loads<-function(k,graphs,mem,modules){

linkweights<-vector()
words<-vector()
for(i in 1:length(unique(mem))){
linkweights[i]<-sum(E(graphs[[k]] %s% modules[[i]])$weight_1)
words[i]<-length(which(V(graphs[[k]])$name%in%V(modules[[i]])$name))

}
linkLoad<-linkweights/sum(E(graphs[[k]])$weight)
wordLoad<-words/vcount(graphs[[k]])
result<-data.frame(wordLoad,linkLoad)
return(result)
}
##Theoretical
wordLoadMatrix<-matrix(0,nrow=35,ncol=length(unique(fgT$membership)))
linkLoadMatrix<-matrix(0,nrow=35,ncol=length(unique(fgT$membership)))
for (j in 1:35){
  wordLoadMatrix[j,]<-loads(j,articlesT,fgT$membership,T_Modules)[,1]
  linkLoadMatrix[j,]<-loads(j,articlesT,fgT$membership,T_Modules)[,2]
}

##Empirical
wordLoadMatrix<-matrix(0,nrow=35,ncol=length(unique(fgE$membership)))
linkLoadMatrix<-matrix(0,nrow=35,ncol=length(unique(fgE$membership)))
for (j in 1:35){
  wordLoadMatrix[j,]<-loads(j,articlesE,fgE$membership,E_Modules)[,1]
  linkLoadMatrix[j,]<-loads(j,articlesE,fgE$membership,E_Modules)[,2]
}

##HEATPLOT

colnames(wordLoadMatrix) <- paste("M", 1:length(unique(fgE$membership)), sep="")
rownames(wordLoadMatrix) <- paste("A", 1:35, sep="")
m<-round(linkLoadMatrix,digits = 1)

image(1:ncol(m), 1:nrow(m), t(m), col = rev(heat.colors(60)), axes = FALSE)
axis(1, 1:ncol(m), colnames(m))
axis(2, 1:nrow(m), rownames(m))
for (x in 1:ncol(m))
  for (y in 1:nrow(m))
    text(x, y, m[y,x])

