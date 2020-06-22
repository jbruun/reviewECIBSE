library(tm)
library(igraph)
#setwd("C:/Users/rmn845/Dropbox/IND/Papers/PaperAnalysisGroupDiscussions/AnalysisOfGroupDiscussions//")
setwd("~/Dropbox/IND/Papers/PaperAnalysisGroupDiscussions/AnalysisOfGroupDiscussions")
#Load the files we need
allFiles <-Corpus(DirSource("DatatoJespermarch2015", encoding="UTF-8"), readerControl = list(language="lat")) 
allFiles<-tm_map(allFiles,tolower)
allFiles<-tm_map(allFiles,removePunctuation)
allFiles<-tm_map(allFiles,stripWhitespace)



#synonymous words
allfiles<-gsub(" <U+FEFF>" ," " ,allFiles,fixed=T)
allFiles<-gsub(" fem " ," 5 " ,allFiles,fixed=T)
allFiles<-gsub(" femtio " ," 50 " ,allFiles,fixed=T)
allFiles<-gsub(" fyra " ," 4 " ,allFiles,fixed=T)
allFiles<-gsub(" fyrahundrafemtio " ," 450 " ,allFiles,fixed=T)
allFiles<-gsub(" hundra " ," 100 " ,allFiles,fixed=T)
allFiles<-gsub(" nioaaringar " ," 9aaring " ,allFiles,fixed=T)
allFiles<-gsub(" tre " ," 3 " ,allFiles,fixed=T)
allFiles<-gsub(" trehundra " ," 300 " ,allFiles,fixed=T)
allFiles<-gsub(" trettio " ," 30 " ,allFiles,fixed=T)
allFiles<-gsub(" tvaa " ," 2 " ,allFiles,fixed=T)
allFiles<-gsub(" aborter " ," abort " ,allFiles,fixed=T)
allFiles<-gsub(" affaererna " ," affaer " ,allFiles,fixed=T)
allFiles<-gsub(" algblommningen " ," algblomning " ,allFiles,fixed=T)
allFiles<-gsub(" algblomningen " ," algblomning " ,allFiles,fixed=T)
allFiles<-gsub(" allihopa " ," allihop " ,allFiles,fixed=T)
allFiles<-gsub(" allmaenheten " ," allmaenhet " ,allFiles,fixed=T)
allFiles<-gsub(" allmaenna " ," allmaent " ,allFiles,fixed=T)
allFiles<-gsub(" allvarliga " ," allvarligt " ,allFiles,fixed=T)
allFiles<-gsub(" annan " ," annat " ,allFiles,fixed=T)
allFiles<-gsub(" ansvar??? " ," ansvar " ,allFiles,fixed=T)
allFiles<-gsub(" ansvaret " ," ansvar " ,allFiles,fixed=T)
allFiles<-gsub(" anvaenda " ," anvaend " ,allFiles,fixed=T)
allFiles<-gsub(" anvaender " ," anvaend " ,allFiles,fixed=T)
allFiles<-gsub(" anvaends " ," anvaend " ,allFiles,fixed=T)
allFiles<-gsub(" argumenterar " ," argumentera " ,allFiles,fixed=T)
allFiles<-gsub(" argumenteras " ," argumentera " ,allFiles,fixed=T)
allFiles<-gsub(" arter " ," art " ,allFiles,fixed=T)
allFiles<-gsub(" avloppsvatten " ," avlopp " ,allFiles,fixed=T)
allFiles<-gsub(" avloppsvattnet " ," avlopp " ,allFiles,fixed=T)
allFiles<-gsub(" banorna " ," banor " ,allFiles,fixed=T)
allFiles<-gsub(" barnen " ," barn " ,allFiles,fixed=T)
allFiles<-gsub(" barnet " ," barn " ,allFiles,fixed=T)
allFiles<-gsub(" barnens " ," barnets " ,allFiles,fixed=T)
allFiles<-gsub(" befolkningen " ," befolkning " ,allFiles,fixed=T)
allFiles<-gsub(" begraensad " ," begraensa " ,allFiles,fixed=T)
allFiles<-gsub(" behaaller " ," behaalla " ,allFiles,fixed=T)
allFiles<-gsub(" behaallit " ," behaalla " ,allFiles,fixed=T)
allFiles<-gsub(" behoell " ," behaalla " ,allFiles,fixed=T)
allFiles<-gsub(" behoever " ," behoeva " ,allFiles,fixed=T)
allFiles<-gsub(" behoevt " ," behoevs " ,allFiles,fixed=T)
allFiles<-gsub(" benen " ," ben " ,allFiles,fixed=T)
allFiles<-gsub(" bergen " ," berg " ,allFiles,fixed=T)
allFiles<-gsub(" betalar " ," betala " ,allFiles,fixed=T)
allFiles<-gsub(" bevaras " ," bevara " ,allFiles,fixed=T)
allFiles<-gsub(" bidrar " ," bidra " ,allFiles,fixed=T)
allFiles<-gsub(" billigare " ," billigt " ,allFiles,fixed=T)
allFiles<-gsub(" biologiska " ," biologiskt " ,allFiles,fixed=T)
allFiles<-gsub(" biologisk " ," biologiskt " ,allFiles,fixed=T)
allFiles<-gsub(" bistaandet " ," bistaand " ,allFiles,fixed=T)
allFiles<-gsub(" bitar " ," bit " ,allFiles,fixed=T)
allFiles<-gsub(" biverkningar " ," biverkning " ,allFiles,fixed=T)
allFiles<-gsub(" biverkningarna " ," biverkning " ,allFiles,fixed=T)
allFiles<-gsub(" blivit " ," blev " ,allFiles,fixed=T)
allFiles<-gsub(" blaaser " ," blaasa " ,allFiles,fixed=T)
allFiles<-gsub(" bor " ," bo " ,allFiles,fixed=T)
allFiles<-gsub(" bryr " ," bry " ,allFiles,fixed=T)
allFiles<-gsub(" bygger " ," bygga " ,allFiles,fixed=T)
allFiles<-gsub(" byta " ," byt " ,allFiles,fixed=T)
allFiles<-gsub(" baatar " ," baaten " ,allFiles,fixed=T)
allFiles<-gsub(" baesta " ," baest " ,allFiles,fixed=T)
allFiles<-gsub(" boenderna " ," boender " ,allFiles,fixed=T)
allFiles<-gsub(" borde " ," boer " ,allFiles,fixed=T)
allFiles<-gsub(" boerjar " ," boerja " ,allFiles,fixed=T)
allFiles<-gsub(" boerjat " ," boerja " ,allFiles,fixed=T)
allFiles<-gsub(" colan " ," cola " ,allFiles,fixed=T)
allFiles<-gsub(" dagarna " ," dag " ,allFiles,fixed=T)
allFiles<-gsub(" dan " ," dag " ,allFiles,fixed=T)
allFiles<-gsub(" delar " ," del " ,allFiles,fixed=T)
allFiles<-gsub(" delarna " ," del " ,allFiles,fixed=T)
allFiles<-gsub(" delen " ," del " ,allFiles,fixed=T)
allFiles<-gsub(" detta " ," det " ,allFiles,fixed=T)
allFiles<-gsub(" din " ," ditt " ,allFiles,fixed=T)
allFiles<-gsub(" djuren " ," djur " ,allFiles,fixed=T)
allFiles<-gsub(" downs " ," down " ,allFiles,fixed=T)
allFiles<-gsub(" dricker " ," dricka " ,allFiles,fixed=T)
allFiles<-gsub(" dryga " ," drygt " ,allFiles,fixed=T)
allFiles<-gsub(" dumma " ," dum " ,allFiles,fixed=T)
allFiles<-gsub(" dyrt " ," dyr " ,allFiles,fixed=T)
allFiles<-gsub(" dyrare " ," dyr " ,allFiles,fixed=T)
allFiles<-gsub(" daaliga " ," daalig " ,allFiles,fixed=T)
allFiles<-gsub(" daaligt " ," daalig " ,allFiles,fixed=T)
allFiles<-gsub(" doedade " ," doedar " ,allFiles,fixed=T)
allFiles<-gsub(" egen " ," eget " ,allFiles,fixed=T)
allFiles<-gsub(" egna " ," eget " ,allFiles,fixed=T)
allFiles<-gsub(" ekologiska " ," ekologisk " ,allFiles,fixed=T)
allFiles<-gsub(" ekologiskt " ," ekologisk " ,allFiles,fixed=T)
allFiles<-gsub(" ekonomin " ," ekonomi " ,allFiles,fixed=T)
allFiles<-gsub(" ekonomiska " ," ekonomiskt " ,allFiles,fixed=T)
allFiles<-gsub(" ekosystemet " ," ekosystem " ,allFiles,fixed=T)
allFiles<-gsub(" ekosystemen " ," ekosystem " ,allFiles,fixed=T)
allFiles<-gsub(" enklare " ," enkelt " ,allFiles,fixed=T)
allFiles<-gsub(" etiska " ," etiskt " ,allFiles,fixed=T)
allFiles<-gsub(" eu???s " ," eu " ,allFiles,fixed=T)
allFiles<-gsub(" eudomstol " ," eu " ,allFiles,fixed=T)
allFiles<-gsub(" euparlamentet " ," eu " ,allFiles,fixed=T)
allFiles<-gsub(" euparalementet " ," eu " ,allFiles,fixed=T)
allFiles<-gsub(" extremt " ," extrem " ,allFiles,fixed=T)
allFiles<-gsub(" extrema " ," extrem " ,allFiles,fixed=T)
allFiles<-gsub(" familjen " ," familj " ,allFiles,fixed=T)
allFiles<-gsub(" farligaste " ," farliga " ,allFiles,fixed=T)
allFiles<-gsub(" fattar " ," fatta " ,allFiles,fixed=T)
allFiles<-gsub(" fattade " ," fatta " ,allFiles,fixed=T)
allFiles<-gsub(" femhundrada " ," femhundra " ,allFiles,fixed=T)
allFiles<-gsub(" feta " ," fet " ,allFiles,fixed=T)
allFiles<-gsub(" fettet " ," fett " ,allFiles,fixed=T)
allFiles<-gsub(" fetter " ," fett " ,allFiles,fixed=T)
allFiles<-gsub(" fettprodukt " ," fett " ,allFiles,fixed=T)
allFiles<-gsub(" fiskade " ," fiska " ,allFiles,fixed=T)
allFiles<-gsub(" fiskar " ," fiska " ,allFiles,fixed=T)
allFiles<-gsub(" fiskas " ," fiska " ,allFiles,fixed=T)
allFiles<-gsub(" fiskeri " ," fiska " ,allFiles,fixed=T)
allFiles<-gsub(" fiskerinaeringen " ," fiska " ,allFiles,fixed=T)
allFiles<-gsub(" fisket " ," fiska " ,allFiles,fixed=T)
allFiles<-gsub(" fiskaren " ," fiskare " ,allFiles,fixed=T)
allFiles<-gsub(" fiskarna " ," fiskare " ,allFiles,fixed=T)
allFiles<-gsub(" fiskekvoten " ," fiskekvot " ,allFiles,fixed=T)
allFiles<-gsub(" fiskekvoter " ," fiskekvot " ,allFiles,fixed=T)
allFiles<-gsub(" fisken " ," fisk " ,allFiles,fixed=T)
allFiles<-gsub(" fiskesorter " ," fisk " ,allFiles,fixed=T)
allFiles<-gsub(" fiskeministrar " ," fiskeministern " ,allFiles,fixed=T)
allFiles<-gsub(" fixade " ," fixa " ,allFiles,fixed=T)
allFiles<-gsub(" fixar " ," fixa " ,allFiles,fixed=T)
allFiles<-gsub(" fixat " ," fixa " ,allFiles,fixed=T)
allFiles<-gsub(" flera " ," fler " ,allFiles,fixed=T)
allFiles<-gsub(" flesta " ," fler " ,allFiles,fixed=T)
allFiles<-gsub(" flyttar " ," flytta " ,allFiles,fixed=T)
allFiles<-gsub(" folket " ," folk " ,allFiles,fixed=T)
allFiles<-gsub(" folkhaelsan " ," folkhaelsa " ,allFiles,fixed=T)
allFiles<-gsub(" forskar " ," forska " ,allFiles,fixed=T)
allFiles<-gsub(" forskarna " ," forskare " ,allFiles,fixed=T)
allFiles<-gsub(" fortare " ," fort " ,allFiles,fixed=T)
allFiles<-gsub(" fortsaetter " ," fortsaetta " ,allFiles,fixed=T)
allFiles<-gsub(" fostret " ," foster " ,allFiles,fixed=T)
allFiles<-gsub(" friskare " ," friska " ,allFiles,fixed=T)
allFiles<-gsub(" frukter " ," frukt " ,allFiles,fixed=T)
allFiles<-gsub(" fungerar " ," fungera " ,allFiles,fixed=T)
allFiles<-gsub(" funka " ," fungera " ,allFiles,fixed=T)
allFiles<-gsub(" funkar " ," fungera " ,allFiles,fixed=T)
allFiles<-gsub(" funkat " ," fungera " ,allFiles,fixed=T)
allFiles<-gsub(" finnas " ," finns " ,allFiles,fixed=T)
allFiles<-gsub(" funnits " ," finns " ,allFiles,fixed=T)
allFiles<-gsub(" fysiska " ," fysisk " ,allFiles,fixed=T)
allFiles<-gsub(" faerdiga " ," faerdig " ,allFiles,fixed=T)
allFiles<-gsub(" foedas " ," foeds " ,allFiles,fixed=T)
allFiles<-gsub(" foeddes " ," foeds " ,allFiles,fixed=T)
allFiles<-gsub(" foetts " ," foeds " ,allFiles,fixed=T)
allFiles<-gsub(" foerberedd " ," foerbereda " ,allFiles,fixed=T)
allFiles<-gsub(" foerdelen " ," foerdel " ,allFiles,fixed=T)
allFiles<-gsub(" foerdelar " ," foerdel " ,allFiles,fixed=T)
allFiles<-gsub(" foerdelarna " ," foerdel " ,allFiles,fixed=T)
allFiles<-gsub(" foerhaalalnde " ," foerhaallande " ,allFiles,fixed=T)
allFiles<-gsub(" foerlorat " ," foerlora " ,allFiles,fixed=T)
allFiles<-gsub(" foerlorar " ," foerlora " ,allFiles,fixed=T)
allFiles<-gsub(" foerslaget " ," foerslag " ,allFiles,fixed=T)
allFiles<-gsub(" foersta " ," foerst " ,allFiles,fixed=T)
allFiles<-gsub(" foerstaar " ," foerstaa " ,allFiles,fixed=T)
allFiles<-gsub(" foerstaatt " ," foerstaa " ,allFiles,fixed=T)
allFiles<-gsub(" foerstoera " ," foerstoer " ,allFiles,fixed=T)
allFiles<-gsub(" foerstoeras " ," foerstoers " ,allFiles,fixed=T)
allFiles<-gsub(" foersvinner " ," foersvinna " ,allFiles,fixed=T)
allFiles<-gsub(" foersoeker " ," foersoeka " ,allFiles,fixed=T)
allFiles<-gsub(" foersoekt " ," foersoeka " ,allFiles,fixed=T)
allFiles<-gsub(" foeraeldrar " ," foeraelder " ,allFiles,fixed=T)
allFiles<-gsub(" foeraeldrarna " ," foeraelder " ,allFiles,fixed=T)
allFiles<-gsub(" foeraendringarna " ," foeraendring " ,allFiles,fixed=T)
allFiles<-gsub(" foeroekar " ," foeroeka " ,allFiles,fixed=T)
allFiles<-gsub(" gamla " ," gammal " ,allFiles,fixed=T)
allFiles<-gsub(" ger " ," ge " ,allFiles,fixed=T)
allFiles<-gsub(" geten " ," get " ,allFiles,fixed=T)
allFiles<-gsub(" gloemmer " ," gloemma " ,allFiles,fixed=T)
allFiles<-gsub(" godiset " ," godis " ,allFiles,fixed=T)
allFiles<-gsub(" gott " ," goda " ,allFiles,fixed=T)
allFiles<-gsub(" gravida " ," gravid " ,allFiles,fixed=T)
allFiles<-gsub(" grejen " ," grej " ,allFiles,fixed=T)
allFiles<-gsub(" grejer " ," grej " ,allFiles,fixed=T)
allFiles<-gsub(" grejerna " ," grej " ,allFiles,fixed=T)
allFiles<-gsub(" gick " ," gaa " ,allFiles,fixed=T)
allFiles<-gsub(" gaatt " ," gaa " ,allFiles,fixed=T)
allFiles<-gsub(" grunderna " ," grund " ,allFiles,fixed=T)
allFiles<-gsub(" gymmet " ," gym " ,allFiles,fixed=T)
allFiles<-gsub(" gaanger " ," gaang " ,allFiles,fixed=T)
allFiles<-gsub(" goedningen " ," goedning " ,allFiles,fixed=T)
allFiles<-gsub(" goedsel " ," goedning " ,allFiles,fixed=T)
allFiles<-gsub(" haven " ," hav " ,allFiles,fixed=T)
allFiles<-gsub(" havet " ," hav " ,allFiles,fixed=T)
allFiles<-gsub(" helst " ," hellre " ,allFiles,fixed=T)
allFiles<-gsub(" hinner " ," hinna " ,allFiles,fixed=T)
allFiles<-gsub(" hittar " ," hitta " ,allFiles,fixed=T)
allFiles<-gsub(" hjaelper " ," hjaelpa " ,allFiles,fixed=T)
allFiles<-gsub(" hjaernan " ," hjaerna " ,allFiles,fixed=T)
allFiles<-gsub(" hoppar " ," hoppa " ,allFiles,fixed=T)
allFiles<-gsub(" hormoner " ," hormon " ,allFiles,fixed=T)
allFiles<-gsub(" hundar " ," hund " ,allFiles,fixed=T)
allFiles<-gsub(" hinna " ," hann " ,allFiles,fixed=T)
allFiles<-gsub(" hunnit " ," hann " ,allFiles,fixed=T)
allFiles<-gsub(" haaller " ," haalla " ,allFiles,fixed=T)
allFiles<-gsub(" haelsan " ," haelsa " ,allFiles,fixed=T)
allFiles<-gsub(" haelsosamt " ," haelsosam " ,allFiles,fixed=T)
allFiles<-gsub(" haender " ," haenda " ,allFiles,fixed=T)
allFiles<-gsub(" haende " ," haenda " ,allFiles,fixed=T)
allFiles<-gsub(" haent " ," haenda " ,allFiles,fixed=T)
allFiles<-gsub(" haestar " ," haest " ,allFiles,fixed=T)
allFiles<-gsub(" hoega " ," hoeg " ,allFiles,fixed=T)
allFiles<-gsub(" hoegt " ," hoeg " ,allFiles,fixed=T)
allFiles<-gsub(" hoegst " ," hoeg " ,allFiles,fixed=T)
allFiles<-gsub(" hoejde " ," hoeja " ,allFiles,fixed=T)
allFiles<-gsub(" hoejer " ," hoeja " ,allFiles,fixed=T)
allFiles<-gsub(" hoejas " ," hoejs " ,allFiles,fixed=T)
allFiles<-gsub(" hoejdes " ," hoejs " ,allFiles,fixed=T)
allFiles<-gsub(" hoerde " ," hoera " ,allFiles,fixed=T)
allFiles<-gsub(" hoert " ," hoera " ,allFiles,fixed=T)
allFiles<-gsub(" inaveln " ," inavel " ,allFiles,fixed=T)
allFiles<-gsub(" inavlade " ," inavlad " ,allFiles,fixed=T)
allFiles<-gsub(" inavlats " ," inavlad " ,allFiles,fixed=T)
allFiles<-gsub(" individer " ," individen " ,allFiles,fixed=T)
allFiles<-gsub(" individerna " ," individen " ,allFiles,fixed=T)
allFiles<-gsub(" industrin " ," industri " ,allFiles,fixed=T)
allFiles<-gsub(" ingen " ," inga " ,allFiles,fixed=T)
allFiles<-gsub(" inget " ," inga " ,allFiles,fixed=T)
allFiles<-gsub(" ingenting " ," inga " ,allFiles,fixed=T)
allFiles<-gsub(" ingeting " ," inga " ,allFiles,fixed=T)
allFiles<-gsub(" inhaegnat " ," inhaegna " ,allFiles,fixed=T)
allFiles<-gsub(" jaa " ," ja " ,allFiles,fixed=T)
allFiles<-gsub(" yes " ," ja " ,allFiles,fixed=T)
allFiles<-gsub(" mm " ," ja " ,allFiles,fixed=T)
allFiles<-gsub(" mmm " ," ja " ,allFiles,fixed=T)
allFiles<-gsub(" jagar " ," jaga " ,allFiles,fixed=T)
allFiles<-gsub(" jobbet " ," jobb " ,allFiles,fixed=T)
allFiles<-gsub(" jobbat " ," jobbar " ,allFiles,fixed=T)
allFiles<-gsub(" jobba " ," jobbar " ,allFiles,fixed=T)
allFiles<-gsub(" jobbigare " ," jobbigt " ,allFiles,fixed=T)
allFiles<-gsub(" jobbigast " ," jobbigt " ,allFiles,fixed=T)
allFiles<-gsub(" jordbruket " ," jordbruk " ,allFiles,fixed=T)
allFiles<-gsub(" judar " ," jude " ,allFiles,fixed=T)
allFiles<-gsub(" judarna " ," jude " ,allFiles,fixed=T)
allFiles<-gsub(" jaegarna " ," jaegare " ,allFiles,fixed=T)
allFiles<-gsub(" jaemfoera " ," jaemfoer " ,allFiles,fixed=T)
allFiles<-gsub(" jaerven " ," jaerv " ,allFiles,fixed=T)
allFiles<-gsub(" kaniner " ," kanin " ,allFiles,fixed=T)
allFiles<-gsub(" killen " ," kille " ,allFiles,fixed=T)
allFiles<-gsub(" killar " ," kille " ,allFiles,fixed=T)
allFiles<-gsub(" kladdkakan " ," kladdkaka " ,allFiles,fixed=T)
allFiles<-gsub(" klarar " ," klara " ,allFiles,fixed=T)
allFiles<-gsub(" klarade " ," klara " ,allFiles,fixed=T)
allFiles<-gsub(" klasser " ," klassen " ,allFiles,fixed=T)
allFiles<-gsub(" kloten " ," klot " ,allFiles,fixed=T)
allFiles<-gsub(" kollade " ," kolla " ,allFiles,fixed=T)
allFiles<-gsub(" kollar " ," kolla " ,allFiles,fixed=T)
allFiles<-gsub(" kompisar " ," kompis " ,allFiles,fixed=T)
allFiles<-gsub(" kondomer " ," kondom " ,allFiles,fixed=T)
allFiles<-gsub(" kondomen " ," kondom " ,allFiles,fixed=T)
allFiles<-gsub(" konsekvenser " ," konsekvensen " ,allFiles,fixed=T)
allFiles<-gsub(" kontrollerat " ," kontrollera " ,allFiles,fixed=T)
allFiles<-gsub(" kortare " ," kort " ,allFiles,fixed=T)
allFiles<-gsub(" kr " ," kronor " ,allFiles,fixed=T)
allFiles<-gsub(" spaenn " ," kronor " ,allFiles,fixed=T)
allFiles<-gsub(" kunskapen " ," kunskap " ,allFiles,fixed=T)
allFiles<-gsub(" kvinnan " ," kvinna " ,allFiles,fixed=T)
allFiles<-gsub(" kvinnor " ," kvinna " ,allFiles,fixed=T)
allFiles<-gsub(" kvinnorna " ," kvinna " ,allFiles,fixed=T)
allFiles<-gsub(" kaempar " ," kaempa " ,allFiles,fixed=T)
allFiles<-gsub(" kaempat " ," kaempa " ,allFiles,fixed=T)
allFiles<-gsub(" kaenner " ," kaenna " ,allFiles,fixed=T)
allFiles<-gsub(" kaennas " ," kaenns " ,allFiles,fixed=T)
allFiles<-gsub(" koeper " ," koepa " ,allFiles,fixed=T)
allFiles<-gsub(" koepte " ," koepa " ,allFiles,fixed=T)
allFiles<-gsub(" landet " ," land " ,allFiles,fixed=T)
allFiles<-gsub(" leder " ," leda " ,allFiles,fixed=T)
allFiles<-gsub(" ledde " ," leda " ,allFiles,fixed=T)
allFiles<-gsub(" lever " ," leva " ,allFiles,fixed=T)
allFiles<-gsub(" levt " ," leva " ,allFiles,fixed=T)
allFiles<-gsub(" ligger " ," ligga " ,allFiles,fixed=T)
allFiles<-gsub(" likadant " ," lika " ,allFiles,fixed=T)
allFiles<-gsub(" litet " ," liten " ,allFiles,fixed=T)
allFiles<-gsub(" livet " ," liv " ,allFiles,fixed=T)
allFiles<-gsub(" lodjuren " ," lodjur " ,allFiles,fixed=T)
allFiles<-gsub(" lynx " ," lodjur " ,allFiles,fixed=T)
allFiles<-gsub(" laangt " ," laang " ,allFiles,fixed=T)
allFiles<-gsub(" laater " ," laata " ,allFiles,fixed=T)
allFiles<-gsub(" laegger " ," laegga " ,allFiles,fixed=T)
allFiles<-gsub(" laeggs " ," laegga " ,allFiles,fixed=T)
allFiles<-gsub(" laenderna " ," laender " ,allFiles,fixed=T)
allFiles<-gsub(" laeskiga " ," laeskigt " ,allFiles,fixed=T)
allFiles<-gsub(" laeser " ," laesa " ,allFiles,fixed=T)
allFiles<-gsub(" laest " ," laesa " ,allFiles,fixed=T)
allFiles<-gsub(" laettare " ," laett " ,allFiles,fixed=T)
allFiles<-gsub(" laettast " ," laett " ,allFiles,fixed=T)
allFiles<-gsub(" loenen " ," loen " ,allFiles,fixed=T)
allFiles<-gsub(" loest " ," loesa " ,allFiles,fixed=T)
allFiles<-gsub(" magen " ," mage " ,allFiles,fixed=T)
allFiles<-gsub(" mamman " ," mamma " ,allFiles,fixed=T)
allFiles<-gsub(" mammor " ," mamma " ,allFiles,fixed=T)
allFiles<-gsub(" marken " ," mark " ,allFiles,fixed=T)
allFiles<-gsub(" marker " ," mark " ,allFiles,fixed=T)
allFiles<-gsub(" medvetna " ," medveten " ,allFiles,fixed=T)
allFiles<-gsub(" mellersta " ," mellan " ,allFiles,fixed=T)
allFiles<-gsub(" mensen " ," mens " ,allFiles,fixed=T)
allFiles<-gsub(" mentalt " ," mental " ,allFiles,fixed=T)
allFiles<-gsub(" mest " ," mera " ,allFiles,fixed=T)
allFiles<-gsub(" mesta " ," mera " ,allFiles,fixed=T)
allFiles<-gsub(" miljoekaemparna " ," miljoekaempar " ,allFiles,fixed=T)
allFiles<-gsub(" miljoevaennerna " ," miljoekaempar " ,allFiles,fixed=T)
allFiles<-gsub(" miljoen " ," miljoe " ,allFiles,fixed=T)
allFiles<-gsub(" minskar " ," minska " ,allFiles,fixed=T)
allFiles<-gsub(" minskat " ," minska " ,allFiles,fixed=T)
allFiles<-gsub(" minskas " ," minska " ,allFiles,fixed=T)
allFiles<-gsub(" mixar " ," mixa " ,allFiles,fixed=T)
allFiles<-gsub(" motivering " ," motiv " ,allFiles,fixed=T)
allFiles<-gsub(" motivet " ," motiv " ,allFiles,fixed=T)
allFiles<-gsub(" maangfalden " ," maangfald " ,allFiles,fixed=T)
allFiles<-gsub(" maennen " ," maen " ,allFiles,fixed=T)
allFiles<-gsub(" maengder " ," maengd " ,allFiles,fixed=T)
allFiles<-gsub(" maenniskor " ," maenniska " ,allFiles,fixed=T)
allFiles<-gsub(" maenniskan " ," maenniska " ,allFiles,fixed=T)
allFiles<-gsub(" maerkte " ," maerker " ,allFiles,fixed=T)
allFiles<-gsub(" nackdelen " ," nackdel " ,allFiles,fixed=T)
allFiles<-gsub(" nackdelarna " ," nackdel " ,allFiles,fixed=T)
allFiles<-gsub(" naturen " ," natur " ,allFiles,fixed=T)
allFiles<-gsub(" naturliga " ," naturligt " ,allFiles,fixed=T)
allFiles<-gsub(" nioaaringar " ," nioaaring " ,allFiles,fixed=T)
allFiles<-gsub(" norrlaenningarna " ," norrlaenning " ,allFiles,fixed=T)
allFiles<-gsub(" nya " ," ny " ,allFiles,fixed=T)
allFiles<-gsub(" nytt " ," ny " ,allFiles,fixed=T)
allFiles<-gsub(" nyttiga " ," nyttig " ,allFiles,fixed=T)
allFiles<-gsub(" nyttigaste " ," nyttig " ,allFiles,fixed=T)
allFiles<-gsub(" nyttigt " ," nyttig " ,allFiles,fixed=T)
allFiles<-gsub(" naagot " ," naagon " ,allFiles,fixed=T)
allFiles<-gsub(" naagra " ," naagon " ,allFiles,fixed=T)
allFiles<-gsub(" naan " ," naagon " ,allFiles,fixed=T)
allFiles<-gsub(" naat " ," naagon " ,allFiles,fixed=T)
allFiles<-gsub(" naatt " ," naagon " ,allFiles,fixed=T)
allFiles<-gsub(" naanting " ," naagonting " ,allFiles,fixed=T)
allFiles<-gsub(" naeae " ," nej " ,allFiles,fixed=T)
allFiles<-gsub(" oftast " ," ofta " ,allFiles,fixed=T)
allFiles<-gsub(" oljesaendning " ," oljetransporter " ,allFiles,fixed=T)
allFiles<-gsub(" omraaden " ," omraade " ,allFiles,fixed=T)
allFiles<-gsub(" onyttiga " ," onyttigt " ,allFiles,fixed=T)
allFiles<-gsub(" orkar " ," orka " ,allFiles,fixed=T)
allFiles<-gsub(" orsakat " ," orsaka " ,allFiles,fixed=T)
allFiles<-gsub(" osten " ," ost " ,allFiles,fixed=T)
allFiles<-gsub(" pakten " ," pakt " ,allFiles,fixed=T)
allFiles<-gsub(" pappan " ," pappa " ,allFiles,fixed=T)
allFiles<-gsub(" parar " ," para " ,allFiles,fixed=T)
allFiles<-gsub(" pengarna " ," pengar " ,allFiles,fixed=T)
allFiles<-gsub(" penning " ," pengar " ,allFiles,fixed=T)
allFiles<-gsub(" pers " ," person " ,allFiles,fixed=T)
allFiles<-gsub(" persson " ," person " ,allFiles,fixed=T)
allFiles<-gsub(" personer " ," person " ,allFiles,fixed=T)
allFiles<-gsub(" politiken " ," politik " ,allFiles,fixed=T)
allFiles<-gsub(" politikerna " ," politiker " ,allFiles,fixed=T)
allFiles<-gsub(" ppillerna " ," piller " ,allFiles,fixed=T)
allFiles<-gsub(" ppiller " ," piller " ,allFiles,fixed=T)
allFiles<-gsub(" pratar " ," prata " ,allFiles,fixed=T)
allFiles<-gsub(" pratade " ," prata " ,allFiles,fixed=T)
allFiles<-gsub(" pratat " ," prata " ,allFiles,fixed=T)
allFiles<-gsub(" priserna " ," pris " ,allFiles,fixed=T)
allFiles<-gsub(" problemen " ," problem " ,allFiles,fixed=T)
allFiles<-gsub(" problemet " ," problem " ,allFiles,fixed=T)
allFiles<-gsub(" produkter " ," produkten " ,allFiles,fixed=T)
allFiles<-gsub(" projektet " ," projekt " ,allFiles,fixed=T)
allFiles<-gsub(" paastaar " ," paastaa " ,allFiles,fixed=T)
allFiles<-gsub(" paaverkar " ," paaverka " ,allFiles,fixed=T)
allFiles<-gsub(" receptet " ," recept " ,allFiles,fixed=T)
allFiles<-gsub(" regeringen " ," regering " ,allFiles,fixed=T)
allFiles<-gsub(" renar " ," ren " ,allFiles,fixed=T)
allFiles<-gsub(" renarna " ," ren " ,allFiles,fixed=T)
allFiles<-gsub(" rensade " ," rensa " ,allFiles,fixed=T)
allFiles<-gsub(" rensar " ," rensa " ,allFiles,fixed=T)
allFiles<-gsub(" renskoetarna " ," renskoetare " ,allFiles,fixed=T)
allFiles<-gsub(" samer " ," renskoetare " ,allFiles,fixed=T)
allFiles<-gsub(" samerna " ," renskoetare " ,allFiles,fixed=T)
allFiles<-gsub(" rider " ," rida " ,allFiles,fixed=T)
allFiles<-gsub(" risken " ," risk " ,allFiles,fixed=T)
allFiles<-gsub(" risker " ," risk " ,allFiles,fixed=T)
allFiles<-gsub(" riskerna " ," risk " ,allFiles,fixed=T)
allFiles<-gsub(" raecker " ," raecka " ,allFiles,fixed=T)
allFiles<-gsub(" raeknat " ," raekna " ,allFiles,fixed=T)
allFiles<-gsub(" saken " ," sak " ,allFiles,fixed=T)
allFiles<-gsub(" samarbetar " ," samarbeta " ,allFiles,fixed=T)
allFiles<-gsub(" samhaellet " ," samhaelle " ,allFiles,fixed=T)
allFiles<-gsub(" sexlusten " ," sexlust " ,allFiles,fixed=T)
allFiles<-gsub(" sidor " ," sida " ,allFiles,fixed=T)
allFiles<-gsub(" sidorna " ," sida " ,allFiles,fixed=T)
allFiles<-gsub(" simmat " ," simma " ,allFiles,fixed=T)
allFiles<-gsub(" sina " ," sin " ,allFiles,fixed=T)
allFiles<-gsub(" sista " ," sist " ,allFiles,fixed=T)
allFiles<-gsub(" sitter " ," sitta " ,allFiles,fixed=T)
allFiles<-gsub(" situationen " ," situation " ,allFiles,fixed=T)
allFiles<-gsub(" sjukdomar " ," sjukdom " ,allFiles,fixed=T)
allFiles<-gsub(" sjukdomen " ," sjukdom " ,allFiles,fixed=T)
allFiles<-gsub(" sjaelvsaekrare " ," sjaelvsaeker " ,allFiles,fixed=T)
allFiles<-gsub(" skador " ," skada " ,allFiles,fixed=T)
allFiles<-gsub(" skatten " ," skatt " ,allFiles,fixed=T)
allFiles<-gsub(" sker " ," ske " ,allFiles,fixed=T)
allFiles<-gsub(" skickar " ," skicka " ,allFiles,fixed=T)
allFiles<-gsub(" skillnaden " ," skillnad " ,allFiles,fixed=T)
allFiles<-gsub(" skjuter " ," skjuta " ,allFiles,fixed=T)
allFiles<-gsub(" skogar " ," skog " ,allFiles,fixed=T)
allFiles<-gsub(" skogarna " ," skog " ,allFiles,fixed=T)
allFiles<-gsub(" skogen " ," skog " ,allFiles,fixed=T)
allFiles<-gsub(" skogsomraaden " ," skog " ,allFiles,fixed=T)
allFiles<-gsub(" skolan " ," skola " ,allFiles,fixed=T)
allFiles<-gsub(" skolor " ," skola " ,allFiles,fixed=T)
allFiles<-gsub(" skyddar " ," skydda " ,allFiles,fixed=T)
allFiles<-gsub(" skaeggstraa " ," skaegg " ,allFiles,fixed=T)
allFiles<-gsub(" skoent " ," skoena " ,allFiles,fixed=T)
allFiles<-gsub(" skoenaste " ," skoena " ,allFiles,fixed=T)
allFiles<-gsub(" skoerdar " ," skoerd " ,allFiles,fixed=T)
allFiles<-gsub(" skoeter " ," skoeta " ,allFiles,fixed=T)
allFiles<-gsub(" skoett " ," skoeta " ,allFiles,fixed=T)
allFiles<-gsub(" slags " ," slag " ,allFiles,fixed=T)
allFiles<-gsub(" slipper " ," slippa " ,allFiles,fixed=T)
allFiles<-gsub(" slutade " ," slut " ,allFiles,fixed=T)
allFiles<-gsub(" slaepper " ," slaeppa " ,allFiles,fixed=T)
allFiles<-gsub(" slaeppt " ," slaeppa " ,allFiles,fixed=T)
allFiles<-gsub(" snabbast " ," snabb " ,allFiles,fixed=T)
allFiles<-gsub(" snabbt " ," snabb " ,allFiles,fixed=T)
allFiles<-gsub(" snackade " ," snacka " ,allFiles,fixed=T)
allFiles<-gsub(" snackar " ," snacka " ,allFiles,fixed=T)
allFiles<-gsub(" snoen " ," snoe " ,allFiles,fixed=T)
allFiles<-gsub(" socialt " ," sociala " ,allFiles,fixed=T)
allFiles<-gsub(" sockerskatten " ," sockerskatt " ,allFiles,fixed=T)
allFiles<-gsub(" sockersugen " ," sockersug " ,allFiles,fixed=T)
allFiles<-gsub(" sockret " ," socker " ,allFiles,fixed=T)
allFiles<-gsub(" sorterar " ," sortera " ,allFiles,fixed=T)
allFiles<-gsub(" sossarna " ," sosse " ,allFiles,fixed=T)
allFiles<-gsub(" speciellt " ," speciell " ,allFiles,fixed=T)
allFiles<-gsub(" spelar " ," spela " ,allFiles,fixed=T)
allFiles<-gsub(" spridningen " ," spridning " ,allFiles,fixed=T)
allFiles<-gsub(" springer " ," springa " ,allFiles,fixed=T)
allFiles<-gsub(" stan " ," stad " ,allFiles,fixed=T)
allFiles<-gsub(" starkare " ," stark " ,allFiles,fixed=T)
allFiles<-gsub(" sterila " ," steril " ,allFiles,fixed=T)
allFiles<-gsub(" stockholmarna " ," stockholmare " ,allFiles,fixed=T)
allFiles<-gsub(" stora " ," stor " ,allFiles,fixed=T)
allFiles<-gsub(" styra " ," styr " ,allFiles,fixed=T)
allFiles<-gsub(" staederna " ," staeder " ,allFiles,fixed=T)
allFiles<-gsub(" staeller " ," staella " ,allFiles,fixed=T)
allFiles<-gsub(" staenger " ," staenga " ,allFiles,fixed=T)
allFiles<-gsub(" staengslet " ," staengsel " ,allFiles,fixed=T)
allFiles<-gsub(" svenska " ," svensk " ,allFiles,fixed=T)
allFiles<-gsub(" svenskar " ," svensk " ,allFiles,fixed=T)
allFiles<-gsub(" svaara " ," svaart " ,allFiles,fixed=T)
allFiles<-gsub(" svaarare " ," svaart " ,allFiles,fixed=T)
allFiles<-gsub(" svaarast " ," svaart " ,allFiles,fixed=T)
allFiles<-gsub(" syftet " ," syfte " ,allFiles,fixed=T)
allFiles<-gsub(" systemet " ," system " ,allFiles,fixed=T)
allFiles<-gsub(" saadana " ," saadant " ,allFiles,fixed=T)
allFiles<-gsub(" saekrast " ," saeker " ,allFiles,fixed=T)
allFiles<-gsub(" saeljer " ," saelja " ,allFiles,fixed=T)
allFiles<-gsub(" saetter " ," saetta " ,allFiles,fixed=T)
allFiles<-gsub(" soeker " ," soeka " ,allFiles,fixed=T)
allFiles<-gsub(" soekt " ," soeka " ,allFiles,fixed=T)
allFiles<-gsub(" tankar " ," tanke " ,allFiles,fixed=T)
allFiles<-gsub(" testar " ," testa " ,allFiles,fixed=T)
allFiles<-gsub(" testosteronet " ," testosteron " ,allFiles,fixed=T)
allFiles<-gsub(" tiden " ," tid " ,allFiles,fixed=T)
allFiles<-gsub(" tidigare " ," tidigt " ,allFiles,fixed=T)
allFiles<-gsub(" tillfoera " ," tillfoer " ,allFiles,fixed=T)
allFiles<-gsub(" tjejen " ," tjej " ,allFiles,fixed=T)
allFiles<-gsub(" tjejer " ," tjej " ,allFiles,fixed=T)
allFiles<-gsub(" tjejerna " ," tjej " ,allFiles,fixed=T)
allFiles<-gsub(" tjocka " ," tjock " ,allFiles,fixed=T)
allFiles<-gsub(" trapporna " ," trappor " ,allFiles,fixed=T)
allFiles<-gsub(" trillar " ," trilla " ,allFiles,fixed=T)
allFiles<-gsub(" trodde " ," tro " ,allFiles,fixed=T)
allFiles<-gsub(" tror " ," tro " ,allFiles,fixed=T)
allFiles<-gsub(" traenar " ," traena " ,allFiles,fixed=T)
allFiles<-gsub(" traenade " ," traena " ,allFiles,fixed=T)
allFiles<-gsub(" \" vad " ," vad " ,allFiles,fixed=T)
allFiles<-gsub(" foerom " ," foeratt " ,allFiles,fixed=T)
allFiles<-gsub(" aevenatt " ," aevenom " ,allFiles,fixed=T)
#Load joining words/words we remove from the analysis
joiningWords<-c("i","det","aer","ju","att","inte","saa","de","jag","man","och","men","ja","foer","som","om","kan","daa","vi","paa","ska","har","alltsaa","vad","en","haer","eller","med","liksom","du","vael","nae","ha","bara","ocksaa","vara","vet","typ","skulle","vill","var","finns","ett","mycket","lite","mer","sen","till","faar","blir","hur","maaste","ta","den","goera","alla","bra","daer","kommer","goer","av","ni","saant","dem","bli","fast","ut","aendaa","hon","naer","tar","maanga","p","sig","andra","nu","faa","egentligen","hade","fan","saeger","gaar","jo","sa","saega","aendaa","hon","naer","bort","tar","maanga","p","sig","andra","nu","faa","egentligen","hade","fan","saeger","gaar","oever","allt","va","komma","oss","saana","ville","jaevla","skriva","kunna","aat")
stopwords<-c("naagonting","nej","slag","naagon", "aha","alltsaa","bla","ens","er","era","hej","kagg","oh","om","antecknar","osv","stagg","stavas","tex","aeh","aah","aa","g","y","m","detatt","gud","daniel","goeran","persson","herre","herregud","heter","jamen","jaekla","jaevligt","kalmar","markus","naehae","naemen","skrev","skriv","skriver","skrivit","tycken","vete")
#Choose one of the two versions of stopwords. 
joiningWords<-c(joiningWords,stopwords,"newturn")
#joiningWords<-c(joiningWords,stopwords)
sentenceFragment<-c("ohoerbart samtidigt prat men det handlar om aemnet")
allFiles<-gsub(sentenceFragment,"",allFiles,fixed=T)
allFiles<-gsub("<U+FEFF>","",allFiles,fixed=T)
allFiles<-gsub("<U+FEFF>jag","jag",allFiles,fixed=T)
allFiles<-gsub("c(","",allFiles,fixed=T)
allFiles<-gsub(")","",allFiles,fixed=T)
allFiles<-gsub("\"","",allFiles,fixed=T)
allFiles<-gsub(","," ",allFiles,fixed=T)
allFiles<-gsub("\\n2"," ",allFiles,fixed=T)

allFiles<-gsub("[^a-zA-Z0-9]"," ",allFiles)

allFiles<-Corpus(VectorSource(allFiles))


allFiles <- tm_map(allFiles, removeWords, c("endoffile"))
#optional allFiles <- tm_map(allFiles, removeWords, c("newturn"))
#allFiles<-Corpus(VectorSource(allFiles))

allFiles<-tm_map(allFiles,stripWhitespace)

myWordNetwork <- function (txt,j.words) {
  # Clean data
  #remove capitalization
  #corpus.temp          <- tm_map(corpus, tolower)
  #Remove punctuations and other unnecessary things
  #corpus.removed.punc  <- tm_map(corpus.temp, removePunctuation)
  #Remove numbers
  #corpus.removed.numb  <- tm_map(corpus.removed.punc, removeNumbers)    
  #Remove Whitespaces
  #corpus.removed.white <- tm_map(corpus.removed.punc, stripWhitespace)
  #corpus               <- Corpus(DataframeSource(data.frame(data)))
  
  #prepare for stemming (language is english, but TM has a package for other
  #languages)
  #corpus.temp <- corpus.removed.white
  #corpus.copy  <- corpus.temp
  #corpus.temp  <- tm_map(corpus.temp, stemDocument, language = language)
  #corpus.final <- tm_map(corpus.temp, stemCompletion, 
  #                      dictionary = corpus.copy)
  #corpus.final<-corpus.temp
  #Prepare to remove "stopwords" such as "A", "The", e.t.c.
  # keep "declarative words"
  #my.stopwords <- stopwords("english")
  #my.stopwords <- my.stopwords[!(my.stopwords %in% j.words)]
  #Remove stopwrods
  #corpus.crop <- tm_map(corpus.removed.white,removeWords,c(my.stopwords))
  
  # Create edge list for export
  edge.list <-strsplit(as.matrix(txt), split = " ")[[1]]
  #Remove unnecessary 
  #edge.list<-as.matrix(corpus.final[[1]])
  #edge.list <- edge.list[edge.list!=""]
  #edge.list<-strsplit(edge.list,split=" ")
  
  # index of "declarative words" (the -1 is because we're removing first and 
  # last word to make it into a word-network
  node.num <- length(edge.list[!(edge.list %in% j.words)]) - 1
  #Create matrix to be exported
  export.edge.list <- array("",dim=c(node.num,2))
  #Set column names as per Gephi requirements
  #colnames(export.edge.list) <- c("Source","Target","Label")
  # Put source word except the "joining words into the matrix to be exported
  export.edge.list[,1] <- edge.list[!(edge.list %in% j.words)][-length(edge.list[!(edge.list %in% j.words)])]
  # put the target word except the "joining words into the matrix to be exported
  export.edge.list[,2] <- edge.list[!(edge.list %in% j.words)][-1]
  
  #Go through the joining words and put them in
  # for(i in j.words) {
  #  for (j in which(edge.list %in% i)) {
  #  export.edge.list[j - sum(!which(edge.list %in% j.words) > j), 3] <- i
  # }
  #}
  return(export.edge.list)
}


#Health Discussions
g1Health1<-as.matrix(myWordNetwork(allFiles[[1]],joiningWords))
g1Health1<-g1Health1[-1,]
g1healthNet1<-graph.edgelist(g1Health1,directed=T)
V(g1healthNet1)$id<-V(g1healthNet1)$name
E(g1healthNet1)$weight<-1
g1healthNet1<-simplify(g1healthNet1,remove.multiple=T,edge.attr.comb="sum")

g2Health1<-as.matrix(myWordNetwork(allFiles[[2]],joiningWords))
g3Health1<-as.matrix(myWordNetwork(allFiles[[3]],joiningWords))
g5Health1<-as.matrix(myWordNetwork(allFiles[[4]],joiningWords))
g1Health2<-as.matrix(myWordNetwork(allFiles[[5]],joiningWords))
g2Health2<-as.matrix(myWordNetwork(allFiles[[6]],joiningWords))
g3Health2<-as.matrix(myWordNetwork(allFiles[[7]],joiningWords))
g5Health2<-as.matrix(myWordNetwork(allFiles[[8]],joiningWords))

g2Health1<-g2Health1[-1,]
g3Health1<-g3Health1[-1,]
g5Health1<-g2Health1[-1,]
g1Health2<-g1Health2[-1,]
g2Health2<-g2Health2[-1,]
g3Health2<-g3Health2[-1,]
g5Health2<-g5Health2[-1,]

g1healthNet2<-graph.edgelist(g1Health2,directed=T)
V(g1healthNet2)$id<-V(g1healthNet2)$name
E(g1healthNet2)$weight<-1
g1healthNet2<-simplify(g1healthNet2,remove.multiple=T,edge.attr.comb="sum")


HealthD1<-rbind(g1Health1,g2Health1,g3Health1,g5Health1)
healthNetD1<-graph.edgelist(HealthD1,directed=T)
V(healthNetD1)$id<-V(healthNetD1)$name
E(healthNetD1)$weight<-1
healthNetD1<-simplify(healthNetD1,remove.multiple=T,edge.attr.comb="sum")

HealthD2<-rbind(g1Health2,g2Health2,g3Health2,g5Health2)
healthNetD2<-graph.edgelist(HealthD2,directed=T)
V(healthNetD2)$id<-V(healthNetD2)$name
E(healthNetD2)$weight<-1
healthNetD2<-simplify(healthNetD2,remove.multiple=T,edge.attr.comb="sum")

Health<-rbind(g1Health1,g2Health1,g3Health1,g5Health1,g1Health2,g2Health2,g3Health2,g5Health2)
healthNet<-graph.edgelist(Health,directed=T)
V(healthNet)$id<-V(healthNet)$name
E(healthNet)$weight<-1
healthNet<-simplify(healthNet,remove.multiple=T,edge.attr.comb="sum")

g1Health<-rbind(g1Health1,g1Health2)
g1healthNet<-graph.edgelist(g1Health,directed=T)
V(g1healthNet)$id<-V(g1healthNet)$name
E(g1healthNet)$weight<-1
g1healthNet<-simplify(g1healthNet,remove.multiple=T,edge.attr.comb="sum")


g2Health<-rbind(g2Health1,g2Health2)
g2healthNet<-graph.edgelist(g2Health,directed=T)
V(g2healthNet)$id<-V(g2healthNet)$name
E(g2healthNet)$weight<-1
g2healthNet<-simplify(g2healthNet,remove.multiple=T,edge.attr.comb="sum")

g3Health<-rbind(g3Health1,g3Health2)
g3healthNet<-graph.edgelist(g3Health,directed=T)
V(g3healthNet)$id<-V(g3healthNet)$name
E(g3healthNet)$weight<-1
g3healthNet<-simplify(g3healthNet,remove.multiple=T,edge.attr.comb="sum")

g5Health<-rbind(g5Health1,g5Health2)
g5healthNet<-graph.edgelist(g5Health,directed=T)
V(g5healthNet)$id<-V(g5healthNet)$name
E(g5healthNet)$weight<-1
g5healthNet<-simplify(g5healthNet,remove.multiple=T,edge.attr.comb="sum")

#Biodiversity Discussions
g1BioDiv1<-as.matrix(myWordNetwork(allFiles[[9]],joiningWords))
g2BioDiv1<-as.matrix(myWordNetwork(allFiles[[10]],joiningWords))
g3BioDiv1<-as.matrix(myWordNetwork(allFiles[[11]],joiningWords))
g5BioDiv1<-as.matrix(myWordNetwork(allFiles[[12]],joiningWords))
g1BioDiv2<-as.matrix(myWordNetwork(allFiles[[13]],joiningWords))
g2BioDiv2<-as.matrix(myWordNetwork(allFiles[[14]],joiningWords))
g3BioDiv2<-as.matrix(myWordNetwork(allFiles[[15]],joiningWords))
g5BioDiv2<-as.matrix(myWordNetwork(allFiles[[16]],joiningWords))
g1BioDiv3<-as.matrix(myWordNetwork(allFiles[[17]],joiningWords))
g2BioDiv3<-as.matrix(myWordNetwork(allFiles[[18]],joiningWords))
g3BioDiv3<-as.matrix(myWordNetwork(allFiles[[19]],joiningWords))
g5BioDiv3<-as.matrix(myWordNetwork(allFiles[[20]],joiningWords))

g1BioDiv1<-g1BioDiv1[-1,]
g2BioDiv1<-g2BioDiv1[-1,]
g3BioDiv1<-g3BioDiv1[-1,]
g5BioDiv1<-g5BioDiv1[-1,]
g1BioDiv2<-g1BioDiv2[-1,]
g2BioDiv2<-g2BioDiv2[-1,]
g5BioDiv2<-g5BioDiv2[-1,]
g2BioDiv3<-g2BioDiv3[-1,]
g3BioDiv3<-g3BioDiv3[-1,]
g5BioDiv3<-g5BioDiv3[-1,]

BioDivD1<-rbind(g1BioDiv1,g2BioDiv1,g3BioDiv1,g5BioDiv1)
biodivNetD1<-graph.edgelist(BioDivD1,directed=T)
V(biodivNetD1)$id<-V(biodivNetD1)$name
E(biodivNetD1)$weight<-1
biodivNetD1<-simplify(biodivNetD1,remove.multiple=T,edge.attr.comb="sum")

BioDivD2<-rbind(g1BioDiv2,g2BioDiv2,g3BioDiv2,g5BioDiv2)
biodivNetD2<-graph.edgelist(BioDivD2,directed=T)
V(biodivNetD2)$id<-V(biodivNetD2)$name
E(biodivNetD2)$weight<-1
biodivNetD2<-simplify(biodivNetD2,remove.multiple=T,edge.attr.comb="sum")


BioDivD3<-rbind(g1BioDiv3,g2BioDiv3,g3BioDiv3,g5BioDiv3)
biodivNetD3<-graph.edgelist(BioDivD3,directed=T)
V(biodivNetD3)$id<-V(biodivNetD3)$name
E(biodivNetD3)$weight<-1
biodivNetD3<-simplify(biodivNetD3,remove.multiple=T,edge.attr.comb="sum")



BioDiv<-rbind(g1BioDiv1,g2BioDiv1,g3BioDiv1,g5BioDiv1,g1BioDiv2,g2BioDiv2,g3BioDiv2,g5BioDiv2,g1BioDiv3,g2BioDiv3,g3BioDiv3,g5BioDiv3)
biodivNet<-graph.edgelist(BioDiv,directed=T)
V(biodivNet)$id<-V(biodivNet)$name
E(biodivNet)$weight<-1
biodivNet<-simplify(biodivNet,remove.multiple=T,edge.attr.comb="sum")

g1BioDiv<-rbind(g1BioDiv1,g1BioDiv2,g1BioDiv3)
g1biodivNet<-graph.edgelist(g1BioDiv,directed=T)
V(g1biodivNet)$id<-V(g1biodivNet)$name
E(g1biodivNet)$weight<-1
g1biodivNet<-simplify(g1biodivNet,remove.multiple=T,edge.attr.comb="sum")


g2BioDiv<-rbind(g2BioDiv1,g2BioDiv2,g2BioDiv3)
g2biodivNet<-graph.edgelist(g2BioDiv,directed=T)
V(g2biodivNet)$id<-V(g2biodivNet)$name
E(g2biodivNet)$weight<-1
g2biodivNet<-simplify(g2biodivNet,remove.multiple=T,edge.attr.comb="sum")


g3BioDiv<-rbind(g3BioDiv1,g3BioDiv2,g3BioDiv3)
g3biodivNet<-graph.edgelist(g3BioDiv,directed=T)
V(g3biodivNet)$id<-V(g3biodivNet)$name
E(g3biodivNet)$weight<-1
g3biodivNet<-simplify(g3biodivNet,remove.multiple=T,edge.attr.comb="sum")


g5BioDiv<-rbind(g5BioDiv1,g5BioDiv2,g5BioDiv3)
g5biodivNet<-graph.edgelist(g5BioDiv,directed=T)
V(g5biodivNet)$id<-V(g5biodivNet)$name
E(g5biodivNet)$weight<-1
g5biodivNet<-simplify(g5biodivNet,remove.multiple=T,edge.attr.comb="sum")


#Sustainable Development (baltic sea)
g1SusDev1<-as.matrix(myWordNetwork(allFiles[[21]],joiningWords))
g2SusDev1<-as.matrix(myWordNetwork(allFiles[[22]],joiningWords))
g3SusDev1<-as.matrix(myWordNetwork(allFiles[[23]],joiningWords))
g5SusDev1<-as.matrix(myWordNetwork(allFiles[[24]],joiningWords))
g1SusDev2<-as.matrix(myWordNetwork(allFiles[[25]],joiningWords))
g2SusDev2<-as.matrix(myWordNetwork(allFiles[[26]],joiningWords))
g3SusDev2<-as.matrix(myWordNetwork(allFiles[[27]],joiningWords))
g5SusDev2<-as.matrix(myWordNetwork(allFiles[[28]],joiningWords))


g2SusDev1<-g2SusDev1[-1,]
g3SusDev1<-g3SusDev1[-1,]
g5SusDev1<-g5SusDev1[-1,]
g2SusDev2<-g2SusDev2[-1,]
g3SusDev2<-g3SusDev2[-1,]



SusDevD1<-rbind(g1SusDev1,g2SusDev1,g3SusDev1,g5SusDev1)
susdevNetD1<-graph.edgelist(SusDevD1,directed=T)
V(susdevNetD1)$id<-V(susdevNetD1)$name
E(susdevNetD1)$weight<-1
susdevNetD1<-simplify(susdevNetD1,remove.multiple=T,edge.attr.comb="sum")


SusDevD2<-rbind(g1SusDev2,g2SusDev2,g3SusDev2,g5SusDev2)
susdevNetD2<-graph.edgelist(SusDevD2,directed=T)
V(susdevNetD2)$id<-V(susdevNetD2)$name
E(susdevNetD2)$weight<-1
susdevNetD2<-simplify(susdevNetD2,remove.multiple=T,edge.attr.comb="sum")


SusDev<-rbind(g1SusDev1,g2SusDev1,g3SusDev1,g5SusDev1,g1SusDev2,g2SusDev2,g3SusDev2,g5SusDev2)
susdevNet<-graph.edgelist(SusDev,directed=T)
V(susdevNet)$id<-V(susdevNet)$name
E(susdevNet)$weight<-1
susdevNet<-simplify(susdevNet,remove.multiple=T,edge.attr.comb="sum")


g1SusDev<-rbind(g1SusDev1,g1SusDev2)
g1susdevNet<-graph.edgelist(g1SusDev,directed=T)
V(g1susdevNet)$id<-V(g1susdevNet)$name
E(g1susdevNet)$weight<-1
g1susdevNet<-simplify(g1susdevNet,remove.multiple=T,edge.attr.comb="sum")



g2SusDev<-rbind(g2SusDev1,g2SusDev2)
g2susdevNet<-graph.edgelist(g2SusDev,directed=T)
V(g2susdevNet)$id<-V(g2susdevNet)$name
E(g2susdevNet)$weight<-1
g2susdevNet<-simplify(g2susdevNet,remove.multiple=T,edge.attr.comb="sum")


g3SusDev<-rbind(g3SusDev1,g3SusDev2)
g3susdevNet<-graph.edgelist(g3SusDev,directed=T)
V(g3susdevNet)$id<-V(g3susdevNet)$name
E(g3susdevNet)$weight<-1
g3susdevNet<-simplify(g3susdevNet,remove.multiple=T,edge.attr.comb="sum")


g5SusDev<-rbind(g5SusDev1,g5SusDev2)
g5susdevNet<-graph.edgelist(g5SusDev,directed=T)
V(g5susdevNet)$id<-V(g5susdevNet)$name
E(g5susdevNet)$weight<-1
g5susdevNet<-simplify(g5susdevNet,remove.multiple=T,edge.attr.comb="sum")


#Genetics (Downs Syndrome)
g1Gene1<-as.matrix(myWordNetwork(allFiles[[29]],joiningWords))
g2Gene1<-as.matrix(myWordNetwork(allFiles[[30]],joiningWords))
g3Gene1<-as.matrix(myWordNetwork(allFiles[[31]],joiningWords))
g5Gene1<-as.matrix(myWordNetwork(allFiles[[32]],joiningWords))

g2Gene1<-g2Gene1[-1,]

Gene<-rbind(g1Gene1,g2Gene1,g3Gene1,g5Gene1)
geneNet<-graph.edgelist(Gene,directed=T)
V(geneNet)$id<-V(geneNet)$name
E(geneNet)$weight<-1
geneNet<-simplify(geneNet,remove.multiple=T,edge.attr.comb="sum")


g1geneNet<-graph.edgelist(g1Gene1,directed=T)
V(g1geneNet)$id<-V(g1geneNet)$name
E(g1geneNet)$weight<-1
g1geneNet<-simplify(g1geneNet,remove.multiple=T,edge.attr.comb="sum")


g2geneNet<-graph.edgelist(g2Gene1,directed=T)
V(g2geneNet)$id<-V(g2geneNet)$name
E(g2geneNet)$weight<-1
g2geneNet<-simplify(g2geneNet,remove.multiple=T,edge.attr.comb="sum")


g3geneNet<-graph.edgelist(g3Gene1,directed=T)
V(g3geneNet)$id<-V(g3geneNet)$name
E(g3geneNet)$weight<-1
g3geneNet<-simplify(g3geneNet,remove.multiple=T,edge.attr.comb="sum")


g5geneNet<-graph.edgelist(g5Gene1,directed=T)
V(g5geneNet)$id<-V(g5geneNet)$name
E(g5geneNet)$weight<-1
g5geneNet<-simplify(g5geneNet,remove.multiple=T,edge.attr.comb="sum")



#Sex and life together (regulation of reproduction)
g1Sex1<-as.matrix(myWordNetwork(allFiles[[33]],joiningWords))
g2Sex1<-as.matrix(myWordNetwork(allFiles[[34]],joiningWords))
g3Sex1<-as.matrix(myWordNetwork(allFiles[[35]],joiningWords))
g5Sex1<-as.matrix(myWordNetwork(allFiles[[36]],joiningWords))
g1Sex2<-as.matrix(myWordNetwork(allFiles[[37]],joiningWords))
g2Sex2<-as.matrix(myWordNetwork(allFiles[[38]],joiningWords))
g3Sex2<-as.matrix(myWordNetwork(allFiles[[39]],joiningWords))
g4Sex2<-as.matrix(myWordNetwork(allFiles[[40]],joiningWords))
g5Sex2<-as.matrix(myWordNetwork(allFiles[[41]],joiningWords))
g6Sex2<-as.matrix(myWordNetwork(allFiles[[42]],joiningWords))


g3Sex1<-g3Sex1[-1,]
g1Sex2<-g1Sex2[-1,]
g3Sex2<-g3Sex2[-1,]
g5Sex2<-g5Sex2[-1,]
g6Sex2<-g6Sex2[-1,]

Sex<-rbind(g1Sex1,g2Sex1,g3Sex1,g5Sex1,g1Sex2,g2Sex2,g3Sex2,g4Sex2,g5Sex2,g6Sex2)
sexNet<-graph.edgelist(Sex,directed=T)
V(sexNet)$id<-V(sexNet)$name
E(sexNet)$weight<-1
sexNet<-simplify(sexNet,remove.multiple=T,edge.attr.comb="sum")


g1sexNet<-graph.edgelist(g1Sex1,directed=T)
V(g1sexNet)$id<-V(g1sexNet)$name
E(g1sexNet)$weight<-1
g1sexNet<-simplify(g1sexNet,remove.multiple=T,edge.attr.comb="sum")

g2sexNet<-graph.edgelist(g2Sex1,directed=T)
V(g2sexNet)$id<-V(g2sexNet)$name
E(g2sexNet)$weight<-1
g2sexNet<-simplify(g2sexNet,remove.multiple=T,edge.attr.comb="sum")



g3sexNet<-graph.edgelist(g3Sex1,directed=T)
V(g3sexNet)$id<-V(g3sexNet)$name
E(g3sexNet)$weight<-1
g3sexNet<-simplify(g3sexNet,remove.multiple=T,edge.attr.comb="sum")


g5sexNet<-graph.edgelist(g5Sex1,directed=T)
V(g5sexNet)$id<-V(g5sexNet)$name
E(g5sexNet)$weight<-1
g5sexNet<-simplify(g5sexNet,remove.multiple=T,edge.attr.comb="sum")

#New files
Baltic01<-as.matrix(myWordNetwork(allFiles[[43]],joiningWords))
Baltic02<-as.matrix(myWordNetwork(allFiles[[46]],joiningWords))
Baltic03<-as.matrix(myWordNetwork(allFiles[[49]],joiningWords))

Baltic01<-Baltic01[-1,]
Baltic02<-Baltic02[-1,]
Baltic03<-Baltic03[-1,]

bal01<-graph.edgelist(Baltic01,directed=T)
V(bal01)$id<-V(bal01)$name
E(bal01)$weight<-1
bal01<-simplify(bal01,remove.multiple=T,edge.attr.comb="sum")

bal02<-graph.edgelist(Baltic02,directed=T)
V(bal02)$id<-V(bal02)$name
E(bal02)$weight<-1
bal02<-simplify(bal02,remove.multiple=T,edge.attr.comb="sum")

bal03<-graph.edgelist(Baltic03,directed=T)
V(bal03)$id<-V(bal03)$name
E(bal03)$weight<-1
bal03<-simplify(bal03,remove.multiple=T,edge.attr.comb="sum")

BalticAll<-rbind(Baltic01,Baltic02,Baltic03)
balAll<-graph.edgelist(BalticAll,directed=T)
V(balAll)$id<-V(balAll)$name
E(balAll)$weight<-1
balAll<-simplify(balAll,remove.multiple=T,edge.attr.comb="sum")

Health01<-as.matrix(myWordNetwork(allFiles[[44]],joiningWords))
Health02<-as.matrix(myWordNetwork(allFiles[[47]],joiningWords))
Health03<-as.matrix(myWordNetwork(allFiles[[50]],joiningWords))

Health01<-Health01[-1,]

heal01<-graph.edgelist(Health01,directed=T)
V(heal01)$id<-V(heal01)$name
E(heal01)$weight<-1
heal01<-simplify(heal01,remove.multiple=T,edge.attr.comb="sum")

heal02<-graph.edgelist(Health02,directed=T)
V(heal02)$id<-V(heal02)$name
E(heal02)$weight<-1
heal02<-simplify(heal02,remove.multiple=T,edge.attr.comb="sum")

heal03<-graph.edgelist(Health03,directed=T)
V(heal03)$id<-V(heal03)$name
E(heal03)$weight<-1
heal03<-simplify(heal03,remove.multiple=T,edge.attr.comb="sum")

HealthAll<-rbind(Health01,Health02,Health03)
healAll<-graph.edgelist(HealthAll,directed=T)
V(healAll)$id<-V(healAll)$name
E(healAll)$weight<-1
healAll<-simplify(healAll,remove.multiple=T,edge.attr.comb="sum")

Wolves01<-as.matrix(myWordNetwork(allFiles[[45]],joiningWords))
Wolves02<-as.matrix(myWordNetwork(allFiles[[48]],joiningWords))
Wolves03<-as.matrix(myWordNetwork(allFiles[[51]],joiningWords))

Wolves01<-Wolves01[-1,]
Wolves02<-Wolves02[-1,]
Wolves03<-Wolves03[-1,]

wolv01<-graph.edgelist(Wolves01,directed=T)
V(wolv01)$id<-V(wolv01)$name
E(wolv01)$weight<-1
wolv01<-simplify(wolv01,remove.multiple=T,edge.attr.comb="sum")

wolv02<-graph.edgelist(Wolves02,directed=T)
V(wolv02)$id<-V(wolv02)$name
E(wolv02)$weight<-1
wolv02<-simplify(wolv02,remove.multiple=T,edge.attr.comb="sum")

wolv03<-graph.edgelist(Wolves03,directed=T)
V(wolv03)$id<-V(wolv03)$name
E(wolv03)$weight<-1
wolv03<-simplify(wolv03,remove.multiple=T,edge.attr.comb="sum")

WolvesAll<-rbind(Wolves01,Wolves02,Wolves03)
wolvAll<-graph.edgelist(WolvesAll,directed=T)
V(wolvAll)$id<-V(wolvAll)$name
E(wolvAll)$weight<-1
wolvAll<-simplify(wolvAll,remove.multiple=T,edge.attr.comb="sum")
#All topics
AllTopics<-rbind(Health,BioDiv,SusDev,Gene,Sex,BalticAll,HealthAll,WolvesAll)
allTopics<-graph.edgelist(AllTopics,directed=T)
V(allTopics)$id<-V(allTopics)$name
E(allTopics)$weight<-1
allTopics<-simplify(allTopics,remove.multiple=T,edge.attr.comb="sum")

##################
#####WOLVES#######
##################
g1BioDiv1<-as.matrix(myWordNetwork(allFiles[[9]],joiningWords))
g2BioDiv1<-as.matrix(myWordNetwork(allFiles[[10]],joiningWords))
g3BioDiv1<-as.matrix(myWordNetwork(allFiles[[11]],joiningWords))
g5BioDiv1<-as.matrix(myWordNetwork(allFiles[[12]],joiningWords))
g1BioDiv2<-as.matrix(myWordNetwork(allFiles[[13]],joiningWords))
g2BioDiv2<-as.matrix(myWordNetwork(allFiles[[14]],joiningWords))
g3BioDiv2<-as.matrix(myWordNetwork(allFiles[[15]],joiningWords))
g5BioDiv2<-as.matrix(myWordNetwork(allFiles[[16]],joiningWords))
g1BioDiv3<-as.matrix(myWordNetwork(allFiles[[17]],joiningWords))
g2BioDiv3<-as.matrix(myWordNetwork(allFiles[[18]],joiningWords))
g3BioDiv3<-as.matrix(myWordNetwork(allFiles[[19]],joiningWords))
g5BioDiv3<-as.matrix(myWordNetwork(allFiles[[20]],joiningWords))

g1BioDiv1<-g1BioDiv1[-1,]
g1BioDiv2<-g1BioDiv2[-1,]
g2BioDiv1<-g2BioDiv1[-1,]
g2BioDiv2<-g2BioDiv2[-1,]
g2BioDiv3<-g2BioDiv3[-1,]
g3BioDiv1<-g3BioDiv1[-1,]
g3BioDiv3<-g3BioDiv3[-1,]
g5BioDiv1<-g2BioDiv1[-1,]
g5BioDiv2<-g2BioDiv2[-1,]
g5BioDiv3<-g2BioDiv3[-1,]


wolves<-rbind(g1BioDiv1,g1BioDiv2,g1BioDiv3,g2BioDiv1,g2BioDiv2,g2BioDiv3,g3BioDiv1,g3BioDiv2,g3BioDiv3)
allWolves<-graph.edgelist(wolves, directed=T)
V(allWolves)$id<-V(allWolves)$name
E(allWolves)$weight<-1
allWolves<-simplify(allWolves,remove.multiple=T,edge.attr.comb="sum")

wolvesG1D1<-graph.edgelist(g1BioDiv1,directed=T)
V(wolvesG1D1)$id<-V(wolvesG1D1)$name
E(wolvesG1D1)$weight<-1
wolvesG1D1<-simplify(wolvesG1D1,remove.multiple=T,edge.attr.comb="sum")

wolvesG2D1<-graph.edgelist(g2BioDiv1,directed=T)
V(wolvesG2D1)$id<-V(wolvesG2D1)$name
E(wolvesG2D1)$weight<-1
wolvesG2D1<-simplify(wolvesG2D1,remove.multiple=T,edge.attr.comb="sum")

wolvesG3D1<-graph.edgelist(g3BioDiv1,directed=T)
V(wolvesG3D1)$id<-V(wolvesG3D1)$name
E(wolvesG3D1)$weight<-1
wolvesG3D1<-simplify(wolvesG3D1,remove.multiple=T,edge.attr.comb="sum")

wolvesG5D1<-graph.edgelist(g5BioDiv1,directed=T)
V(wolvesG5D1)$id<-V(wolvesG5D1)$name
E(wolvesG5D1)$weight<-1
wolvesG5D1<-simplify(wolvesG5D1,remove.multiple=T,edge.attr.comb="sum")

wolvesG1D2<-graph.edgelist(g1BioDiv2,directed=T)
V(wolvesG1D2)$id<-V(wolvesG1D2)$name
E(wolvesG1D2)$weight<-1
wolvesG1D2<-simplify(wolvesG1D2,remove.multiple=T,edge.attr.comb="sum")

wolvesG2D2<-graph.edgelist(g2BioDiv2,directed=T)
V(wolvesG2D2)$id<-V(wolvesG2D2)$name
E(wolvesG2D2)$weight<-1
wolvesG2D2<-simplify(wolvesG2D2,remove.multiple=T,edge.attr.comb="sum")

wolvesG3D2<-graph.edgelist(g3BioDiv2,directed=T)
V(wolvesG3D2)$id<-V(wolvesG3D2)$name
E(wolvesG3D2)$weight<-1
wolvesG3D2<-simplify(wolvesG3D2,remove.multiple=T,edge.attr.comb="sum")

wolvesG5D2<-graph.edgelist(g5BioDiv2,directed=T)
V(wolvesG5D2)$id<-V(wolvesG5D2)$name
E(wolvesG5D2)$weight<-1
wolvesG5D2<-simplify(wolvesG5D2,remove.multiple=T,edge.attr.comb="sum")

wolvesG1D3<-graph.edgelist(g1BioDiv3,directed=T)
V(wolvesG1D3)$id<-V(wolvesG1D3)$name
E(wolvesG1D3)$weight<-1
wolvesG1D3<-simplify(wolvesG1D3,remove.multiple=T,edge.attr.comb="sum")

wolvesG2D3<-graph.edgelist(g2BioDiv3,directed=T)
V(wolvesG2D3)$id<-V(wolvesG2D3)$name
E(wolvesG2D3)$weight<-1
wolvesG2D3<-simplify(wolvesG2D3,remove.multiple=T,edge.attr.comb="sum")

wolvesG3D3<-graph.edgelist(g3BioDiv3,directed=T)
V(wolvesG3D3)$id<-V(wolvesG3D3)$name
E(wolvesG3D3)$weight<-1
wolvesG3D3<-simplify(wolvesG3D3,remove.multiple=T,edge.attr.comb="sum")

wolvesG5D3<-graph.edgelist(g5BioDiv3,directed=T)
V(wolvesG5D3)$id<-V(wolvesG5D3)$name
E(wolvesG5D3)$weight<-1
wolvesG5D3<-simplify(wolvesG5D3,remove.multiple=T,edge.attr.comb="sum")

write.graph(wolvesG1D1,"wolvesG1D1march112015b.net", format=c("pajek"))
write.graph(wolvesG1D2,"wolvesG1D2march112015b.net", format=c("pajek"))
write.graph(wolvesG1D3,"wolvesG1D3march112015b.net", format=c("pajek"))
write.graph(wolvesG2D1,"wolvesG2D1march112015b.net", format=c("pajek"))
write.graph(wolvesG2D2,"wolvesG2D2march112015b.net", format=c("pajek"))
write.graph(wolvesG2D3,"wolvesG2D3march112015b.net", format=c("pajek"))
write.graph(wolvesG3D1,"wolvesG3D1march112015b.net", format=c("pajek"))
write.graph(wolvesG3D2,"wolvesG3D2march112015b.net", format=c("pajek"))
write.graph(wolvesG3D3,"wolvesG3D3march112015b.net", format=c("pajek"))
write.graph(wolvesG5D1,"wolvesG5D1.net", format=c("pajek"))
write.graph(wolvesG5D2,"wolvesG5D2.net", format=c("pajek"))
write.graph(wolvesG5D3,"wolvesG5D3.net", format=c("pajek"))
write.graph(wolv01,"wolvesGxD1.net", format=c("pajek"))
write.graph(wolv02,"wolvesGxD2.net", format=c("pajek"))
write.graph(wolv03,"wolvesGxD3.net", format=c("pajek"))
#Replace DATE with current date  before running.
write.graph(g1healthNet1,"g1healthNet9march2015_FLOW.net", format=c("pajek"))
write.graph(healthNetD1,"healthNetD9march2015_FLOW.net", format=c("pajek"))
write.graph(healthNetD2,"healthNetD9march2015_FLOW.net", format=c("pajek"))
write.graph(healthNet,"healthNet9march2015FLOW.net", format=c("pajek"))
write.graph(g1healthNet,"healthNetg19march2015FLOW.net", format=c("pajek"))
write.graph(g2healthNet,"healthNetg29march2015FLOW.net", format=c("pajek"))
write.graph(g3healthNet,"healthNetg39march2015FLOW.net", format=c("pajek"))
write.graph(g5healthNet,"healthNetg59march2015FLOW.net", format=c("pajek"))
write.graph(biodivNetD1,"biodivNetD19march2015FLOW.net", format=c("pajek"))
write.graph(biodivNetD2,"biodivNetD29march2015FLOW.net", format=c("pajek"))
write.graph(biodivNetD3,"biodivNetD39march2015FLOW.net", format=c("pajek"))
write.graph(biodivNet,"biodivNet9march2015FLOW.net", format=c("pajek"))
write.graph(g1biodivNet,"biodivNetg19march2015FLOW.net", format=c("pajek"))
write.graph(g2biodivNet,"biodivNetg29march2015FLOW.net", format=c("pajek"))
write.graph(g3biodivNet,"biodivNetg39march2015FLOW.net", format=c("pajek"))
write.graph(g5biodivNet,"biodivNetg59march2015FLOW.net", format=c("pajek"))
write.graph(susdevNetD1,"susdevNetD19march2015FLOW.net", format=c("pajek"))
write.graph(susdevNetD2,"susdevNetD29march2015FLOW.net", format=c("pajek"))
write.graph(susdevNet,"susdevNet9march2015FLOW.net", format=c("pajek"))
write.graph(g1susdevNet,"susdevNetg19march2015FLOW.net", format=c("pajek"))
write.graph(g2susdevNet,"susdevNetg29march2015FLOW.net", format=c("pajek"))
write.graph(g3susdevNet,"susdevNetg39march2015FLOW.net", format=c("pajek"))
write.graph(g5susdevNet,"susdevNetg59march2015FLOW.net", format=c("pajek"))
write.graph(geneNet,"geneNet9march2015FLOW.net", format=c("pajek"))
write.graph(g1geneNet,"geneNetg19march2015FLOW.net", format=c("pajek"))
write.graph(g2geneNet,"geneNetg29march2015FLOW.net", format=c("pajek"))
write.graph(g3geneNet,"geneNetg39march2015FLOW.net", format=c("pajek"))
write.graph(g5geneNet,"geneNetg59march2015FLOW.net", format=c("pajek"))
write.graph(sexNet,"sexNet9march2015FLOW.net", format=c("pajek"))
write.graph(g1sexNet,"sexNetg19march2015FLOW.net", format=c("pajek"))
write.graph(g2sexNet,"sexNetg29march2015FLOW.net", format=c("pajek"))
write.graph(g3sexNet,"sexNetg39march2015FLOW.net", format=c("pajek"))
write.graph(g5sexNet,"sexNetg59march2015FLOW.net", format=c("pajek"))
write.graph(balAll,"new_balticAll9march2015FLOW.net", format=c("pajek"))
write.graph(healAll,"new_healthAll9march2015FLOW.net", format=c("pajek"))
write.graph(wolvAll,"new_wolvesAll9march2015FLOW.net", format=c("pajek"))
write.graph(allTopics,"allTopicsAllDiscussionsAllGroups9march2015FLOW.net", format=c("pajek"))
write.graph(allBB,"allTopicsAllDiscussionsAllGroups9march2015FLOW_BB.net", format=c("pajek"))
