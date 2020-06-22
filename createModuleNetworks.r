#run createTheoreticalNetworks.R and createEmpiricalNetworks.r first
#you should have an object called: allNetTheoretical and an object called allNetEmpirical
#These are graph objects, weighted and directed


###Theoretical###
table(fgT$membership)
T_M01<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==1])
T_M02<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==2])
T_M03<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==3])
T_M04<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==4])
T_M05<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==5])
T_M06<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==6])
T_M07<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==7])
T_M08<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==8])
T_M09<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==9])
T_M10<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==10])
T_M11<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==11])
T_M12<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==12])
T_M13<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==13])
T_M14<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==14])
T_M15<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==15])
T_M16<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==16])
T_M17<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==17])
T_M18<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==18])
T_M19<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==19])
T_M20<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==20])
T_M21<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==21])
T_M22<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==22])
T_M23<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==23])
T_M24<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==24])
T_M25<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==25])
T_M26<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==26])
T_M27<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==27])
T_M28<-induced.subgraph(allNetTheoretical,vids=V(allNetTheoretical)[fgT$membership==28])
T_Modules<-list(T_M01,T_M02,T_M03,T_M04,T_M05,T_M06,T_M07,T_M08,T_M09,T_M10,T_M11,T_M12,T_M13,T_M14,T_M15,T_M16,T_M17,T_M18,T_M19,T_M20,T_M21,T_M22,T_M23,T_M24,T_M25,T_M26,T_M27,T_M28)
x<-vector()
for(i in 1:19){
  x[i]<-vcount(T_Modules[[i]])
}

###Empirical###
table(fgE$membership)
E_M01<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==1])
E_M02<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==2])
E_M03<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==3])
E_M04<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==4])
E_M05<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==5])
E_M06<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==6])
E_M07<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==7])
E_M08<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==8])
E_M09<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==9])
E_M10<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==10])
E_M11<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==11])
E_M12<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==12])
E_M13<-induced.subgraph(allNetEmpirical,vids=V(allNetEmpirical)[fgE$membership==13])

E_Modules<-list(E_M01,E_M02,E_M03,E_M04,E_M05,E_M06,E_M07,E_M08,E_M09,E_M10,E_M11,E_M12,E_M13)
