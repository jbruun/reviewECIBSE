#NEED TO FIX!! GSUB DESTROYS CORPUS!!

library(tm)
library(igraph)
library(ngram)
#Load the files we need
allTheoretical <-Corpus(DirSource("textsTheoretical/textPrepared", encoding="UTF-8"), readerControl = list(language="lat")) 
allTheoretical<-tm_map(allTheoretical,tolower)
allTheoretical<-tm_map(allTheoretical,removePunctuation)
allTheoretical<-tm_map(allTheoretical,stripWhitespace)



#synonymous words
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(accompanies|accompanying)", replacement = "accompanied")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "accordingly", replacement = "according")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(achieve2013|achieving)", replacement = "achieve")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(acknowledged|acknowledges)", replacement = "acknowledge")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(acquiring|acquired)", replacement = "acquire")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "acted", replacement = "act")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "actions", replacement = "action")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "actively", replacement = "active")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "activities", replacement = "activity")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(actuality|actually)", replacement = "actual")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "adaptively", replacement = "adaptable")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(additionally|additional|addition|added)", replacement = "add")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(addressing|addressed)", replacement = "address")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "adults", replacement = "adult")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "advanced", replacement = "advance")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "aesthetically", replacement = "aesthetic")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "ages", replacement = "age")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "agreement", replacement = "agree")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(aimed|aims)", replacement = "aim")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(allowing|allowed|allows)", replacement = "allow")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "alongside", replacement = "along")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(analysis|analytical|analytic|analyze|analyzing)", replacement = "analyse")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(answered|answering|answers)", replacement = "answer")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "appearance", replacement = "appear")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "applications", replacement = "application")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(applying|applied)", replacement = "apply")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "approaches", replacement = "approach")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(appropriately|appropriateness)", replacement = "appropriate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(argumentation|arguments|argument|argues|argued)", replacement = "argue")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(arisen|arises|arising)", replacement="arise")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(articulated|articulating)",replacement="articulate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "artifacts", replacement = "artifact")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(asking|asks)",  replacement = "ask")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "aspects", replacement = "aspect")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(assigned|assigning)", replacement = "assign")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(associated|association)",replacement = "associate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(assumption|assumptions)",replacement = "assume")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "attributed", replacement="attribute")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(became|becomes|becoming)", replacement="become")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(beginning|begins)", replacement="begin")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "behaviors", replacement="behavior")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "attributed", replacement="attribute")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(beliefs|believed)", replacement="belief")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "books", replacement="book")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "broader", replacement="broad")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "builds", replacement="build")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "capabilities", replacement="capability")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(carried|carries)", replacement="carry")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(categorization|classification|categorizing|categorized|classified|categories|classify|category)", replacement="category_classify")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(centered|centred|centre)", replacement="center")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "centrality", replacement="central")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(challenging|challenged|challenges)", replacement="challenge")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "changes", replacement="change")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "characteristics", replacement="characteristic")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(child's|children|children's|childrens)", replacement="child")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "choices", replacement="choice")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(claimed|claims)", replacement="claim")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "classes", replacement="class")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "classrooms", replacement="classroom")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(coconstructing|coconstructors|coconstruction)", replacement="coconstruct")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "cognitively", replacement="cognitive")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(collaborating|collaborations|collaboration|collaboratively|collaborative|collaborators)", replacement="collaboration")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(collecting|collection|collected)", replacement="collect") #|collective ??
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(combination|combining|combined)", replacement="combine")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "comes", replacement="come")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(communicate|communicating|communication|communicative|communicators)", replacement="communicate") #|communities ??
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "communities", replacement="community")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "comparison", replacement="compare")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "completing", replacement="complete")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(complexities|complexity)", replacement="complex")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "components", replacement="component")	
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(comprised|comprises)", replacement="comprise")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "computers", replacement="computer")	
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(conceptualizing|conceptualized|conceptually|conceptualize|conceptions|conception|concepts)", replacement="concept")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(concerning|concerned)", replacement="concern")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(concluding|conclusions|concluded)", replacement="conclusion")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "conducting", replacement="conduct")	
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(confirmation|confirmed)", replacement="confirm")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "conflicts", replacement="conflict")	
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "conjectures", replacement="conjecture")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(connections|connection|connected|connects)", replacement="connect")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(consideration|considered|considers)", replacement="consider")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "consistently", replacement="consistent")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(consists|consisted)", replacement="consist")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(constituted|constitutes)", replacement="constitute")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(constructing|constructive|construction|constructed)", replacement="construct")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "constructivist", replacement="constructivism")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(contexts'|contexts|context')", replacement="context")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(contextsensitive'|contextualized)", replacement="contextual")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(continuously|continually|continuing|continued)", replacement="continue")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(conversational|conversations)", replacement="conversation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "correctly", replacement="correct")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(creating|created|creates)", replacement="create")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "creativity", replacement="creative")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "criteria", replacement="criterion")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "critically", replacement="critical")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(curricula|curricular)", replacement="curriculum")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(cyclical|cyclic)", replacement="cycle")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "dealing", replacement="deal")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "debates", replacement="debate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(decisionmaking|decisions|deciding)", replacement="decision")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(deeper|deeply)", replacement="deep")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(defining|defined)", replacement="define")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "degrees", replacement="degree")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "demonstration", replacement="demonstrate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(depending|depends)", replacement="depend")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(depiction|depicts)", replacement="depict")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(descriptions|description|described|describes|describe)", replacement="describe_ption")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(designing|designed)", replacement="design")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "detailed", replacement="detail")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(detection|detecting)", replacement="detect")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "determinate", replacement="determine")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(developmental|development|developing|developed|develops)", replacement="develop")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(johndewey|dewey1991p108|dewey1956pp47-48|dewey1910|deweys)", replacement="dewey")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(difference|differences|differ)", replacement="different")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(difficulty|dificult)", replacement="difficult")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(dimensions)", replacement="dimension")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(directed|directing|directly)", replacement="direct")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(discipline|disciplines)", replacement="discipline")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(discoveries|discovering|discovery)", replacement="discover")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(discussed|discussing|discussions|discussion)", replacement="discuss")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(display|displaying)", replacement="display")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(distinction|distinctions)", replacement="distinction")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(distinguish|distinguished)", replacement="distinguish")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(domain|domains|domainspecific)", replacement=" ")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(drawings|drawing|drawn|draws)", replacement="draw")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(earlier|early)", replacement="early")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(easier|easily)", replacement="easy")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(educated|educational|education|educative)", replacement="education")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(effectively|effectiveness|effective)", replacement="effect")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(elaborated|elaborating|elaboration)", replacement="elaborate")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(embedded|embedding|embeds)", replacement="embed")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(emergent|emerges|emerging)", replacement="emerge")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(emphasis|emphasized|emphasizes|emphasizing)", replacement="emphasize")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(employed|employing)", replacement="employ")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(enables|enabling)", replacement="enable")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(encouraged encourages|encouraging)", replacement="encourage")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(engaged engagement|engages|engaging)", replacement="engage")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "ends", replacement="end")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(enhancements|enhancing)", replacement="enhance")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(entities)", replacement="entity")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(environments|environments)", replacement="environment")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(epistemologically|epistemological)", replacement="epistemic")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(established|establishing)", replacement="establish")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(evaluated|evaluating|evaluation)", replacement="evaluate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "eshachfried2005p327", replacement="eshachfried2005")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(examined|examines|examining)", replacement="examine")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(expansion)", replacement="expand")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(experimental|experimentation|experimenting|experiments)", replacement="experiment")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(explained|explaining)", replacement="explain")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(explanations|explanatory)", replacement="explanation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(explicitly)", replacement="explicit")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(explorations|exploration|exploratory|explored|exploring)", replacement="explore")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(expressed|expressing)", replacement="express")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(extended|extending|extends)", replacement="extend")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(facilitated|facilitates|facilitating|facilitators|facilitator)", replacement="facilitate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(facts|factual)", replacement="fact")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(familiar|family)", replacement="family")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(features)", replacement="feature")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(finding|findings)", replacement="find")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(floating)", replacement="float")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(foci|focused|focuses|focusing)", replacement="focus")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(followed|following)", replacement="follow")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(forms)", replacement="form")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(formally)", replacement="formal")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(formats)", replacement="format")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(formulating|formulation)", replacement="formulate")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(framed|frames)", replacement="frame")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(frameworks)", replacement="framework")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(freedom)", replacement="free")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(french2004p147)", replacement="french2004")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(fully)", replacement="full")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(functioning|functions)", replacement="function")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(gained|gaining)", replacement="gain")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(gathering)", replacement="gather")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(generalization|generalizing)", replacement="general")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(generated|generates|generatingd|generating)", replacement="generate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(get)", replacement="get")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(give|given gives|giving)", replacement="give")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(goal-orientated|goals|goaloriented)", replacement="goal")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(grades)", replacement="grade")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(grain'|grained)", replacement="grain")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(greater|greatly)", replacement="great")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(grounds)", replacement="grounded")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(grouped|groups)", replacement="group")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(guidance|guided|guidelines|guides|guiding)", replacement="guide")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(higher|highly)", replacement="high")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(hypotheses|hypothesizing)", replacement="hypothesis")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(ideas)", replacement="idea")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(identification|identified|identifying)", replacement="identify")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(implies)", replacement="imply")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(importance)", replacement="important")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(included|includes|including|inclusion)", replacement="include")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(incorporates)", replacement="incorporate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(increases|increasing|increasingly)", replacement="increase")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(independence)", replacement="independent")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(indicated|indicates)", replacement="indicate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(individual's|individuals)", replacement="individual")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(inferences|inference|inferring)", replacement="infer")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(influenced|influential)", replacement="influence")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(informative|informed)", replacement="inform")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(initially)", replacement="initial")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(initiating)", replacement="initiate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(inquirer|inquiries|inquiring|inquirybased)", replacement="inquiry")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(inspired|inspiring)", replacement="inspire")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(instances)", replacement="instance")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(instructional|instructionally)", replacement="instruction")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(integrated|integrating|integration)", replacement="integrate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(intentionally|intentions)", replacement="intent")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(interacting|interactions)", replacement="interaction")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(curiosity|interesting|interests|interests)", replacement="interest")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(interpretations|interpretation|interpreted|interpreting|interprets)", replacement="interpret")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(introduced|introduces|introducing|introduction)", replacement="introduce")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(investigating|investigations|investigation)", replacement="investigate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(involved|involves|involving)", replacement="involve")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(judging|judgments)", replacement="judge")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(kindergarteners|kindergartners)", replacement="kindergartener")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(kinds)", replacement="kind")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(knew|knowing|known)", replacement="know")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(labs)", replacement="laboratory")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(larger)", replacement="large")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(leading|leads)", replacement="lead")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(learn|learned|learning)", replacement="learn")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(learners|learners')", replacement="learner")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(lesser)", replacement="less")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(lessons)", replacement="lesson")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(levels)", replacement="level")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(listening|listens)", replacement="listen")
#allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(living-nonliving|living)", replacement=" ")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(locally)", replacement="local")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(located|locations)", replacement="location")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(logical|logically)", replacement=" ")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(longer)", replacement="longterm")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(looking)", replacement="look")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(losing)", replacement="lose")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(major|majors)", replacement="major") #HMMM
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(makes|making)", replacement="make")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(manageable)", replacement="manage")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(manifest|manifested)", replacement="manifest")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(manipulating|manipulation)", replacement="manipulation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(map|mapping)", replacement="map")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(master|mastery)", replacement="master")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(material|materials)", replacement="material")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(mathematically|mathematics|mathematic)", replacement="mathematical")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(meaning'|meaningful|meaningfully|meanings|mean)", replacement="meaning")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(measured|measurements|measure)", replacement="measurement")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(members|membership)", replacement="member")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(mental|mentally)", replacement="mental")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(method|methods)", replacement="method")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(midwest|midwestern)", replacement="midwest")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(model|modelbased|modeling|modelling|models)", replacement="model")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(modified|modify|modifying)", replacement="modify")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(moment|moments)", replacement="moment")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(movements|moves|moving)", replacement="move")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(mutual|mutually)", replacement="mutual")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(natural|naturally)", replacement="natural")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(necessarily)", replacement="necessary")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(needed|needs)", replacement="need")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(newfound)", replacement="new")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(normative|norms)", replacement="norm")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(noted|notes)", replacement="note")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(notions)", replacement="notion")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(numbers|numeracy)", replacement="number") #HMMM
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(objects|objects')", replacement="object")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(observations)", replacement="observation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(observed|observes|observing)", replacement="observe")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(obtaining)", replacement="obtain")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(operates)", replacement="operate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(opportunities)", replacement="opportunity")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(organized|organizing)", replacement="organize")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(orientated|orientation|oriented)", replacement="orient")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(original|originally)", replacement="original")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(others')", replacement="others")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(outcomes)", replacement="outcome")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(overarching)", replacement="overall")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(participating|participation)", replacement="participate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(participants)", replacement="participant")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(particularly)", replacement="particular")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(partnerships|partnerships|partners)", replacement="partner")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(paths|pathway)", replacement="path")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(patterns)", replacement="pattern")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(pedagogical|pedagogically)", replacement="pedagogy")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(pedagogies|pedagogy)", replacement="pedagogy")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(perceive|perceived)", replacement="perceive")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(periods)", replacement="period")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(personally)", replacement="personal")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(perspectives)", replacement="perspective")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(phase1|phase2|phase3|phases)", replacement="phase")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(phenomena)", replacement="phenomenon")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(photography)", replacement="photo")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(phrased|phrases)", replacement="phrase")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(physically)", replacement="physical")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(pictures)", replacement="picture")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(place|placed|places)", replacement="place")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(plans|planned|planning)", replacement="plan")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(plant|plants)", replacement="plant")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(plays)", replacement="play")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(pointed|points)", replacement="point")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(posed)", replacement="pose")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(powerfully)", replacement="powerful")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(practiced|practices)", replacement="practice")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(predicted|predicting|prediction|predictions)", replacement="predict")
#allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(prediction|predictions)", replacement="predict")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(preparation|prepared)", replacement="prepare")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(preprimarylevel|kindergarten)", replacement="kindergarten")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(preschool|preschoolers|preschoolers'|kindergartner)", replacement="kindergartener")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(present|presented|presenting|presents)", replacement="present")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(previously)", replacement="previous")
#allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(primarily|firsthand|first)", replacement="prime")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(principles)", replacement="principle")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(problems)", replacement="problem")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(procedures)", replacement="procedure")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(process-ask|processes)", replacement="process")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(production|productive|producing|produce)", replacement="product") #HMMM
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(proficiency|proficient)", replacement="proficient")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(program|programme)", replacement="program")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(progression|progressively)", replacement="progression")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(projectbased|projects)", replacement="project")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(promote|promotes|promotion)", replacement="promote")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(proposed|proposing|propos)", replacement="propose")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(provided|provides|providing)", replacement="provide")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(provocateurs)", replacement="provocateur")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(putting)", replacement="put")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(queries)", replacement="query")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(questioning|questions)", replacement="question")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(raising)", replacement="raise")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(ranging)", replacement="range")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(reached)", replacement="reach")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(realistic|reality)", replacement="real")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(realworld)", replacement="reallife")

allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(recognition|recognizing|recognize)", replacement="recognise")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(recommendations|recommended|recommends)", replacement="recommend")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(reconstructing)", replacement="reconstruct")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(recorded|recording)", replacement="record")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(referring|refers)", replacement="refer")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(refined|refining)", replacement="refine")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(reflecting|reflections|reflection|reflects)", replacement="reflect")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(regarding|regarded)", replacement="regard")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(reinforced|reinforcement|reinforcing)", replacement="reinforce")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(relating|related|relates)", replacement="relate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(relationbased)", replacement="relation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(relationship|relationships|relations)", replacement="relation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(relevant)", replacement="relevance")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(relies|relying)", replacement="rely")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(repeatedly)", replacement="repeated")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(reported)", replacement="report")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(representing|representations)", replacement="represent")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(representational)", replacement="representation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(requires|requiring|requirement)", replacement="require")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(researchers|researcher)", replacement="research") #HMMM
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(resources)", replacement="resource")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(respected)", replacement="respect")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(responds|response)", replacement="respond")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(results)", replacement="result")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(reviewed|reviewing)", replacement="review")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(revising)", replacement="revise")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(roles)", replacement="role")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(scaffolded|scaffolding|scaffolds)", replacement="scaffold")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(schools)", replacement="school")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(sciencerelated|sciences|scientific|scientifically)", replacement="science") #HMMMM
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(scientists)", replacement="scientist")
#allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(second|secondary)", replacement=" ") #HMMM
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(seeking|seeks)", replacement="seek")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(seemed|seems)", replacement="seem")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(selected|selecting|selectively)", replacement="select")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(sensemaking)", replacement="sense")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(sequencing|sequentially|sequential)", replacement="sequence")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(serves|serving)", replacement="serve")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(sessions)", replacement="session")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(sets)", replacement="set")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(settings)", replacement="setting")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(shaped|shaping)", replacement="shape")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(shared)", replacement="share")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(shifts)", replacement="shift")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(shows)", replacement="shown")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(similarities|similarly)", replacement="similar")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(simply)", replacement="simple")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(simulated|simulations)", replacement="simulation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(sinking)", replacement="sink")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(situated|situating)", replacement="situate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(situations)", replacement="situation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(skills)", replacement="skill")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(smaller)", replacement="small")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(solely)", replacement="sole")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(solutions)", replacement="solution")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(solving)", replacement="solve")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(sources)", replacement="source")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(specification|specified|specifying)", replacement="specify") #HMMM
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(stages)", replacement="stage")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(started|starting|starts)", replacement="start")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(statement|statements|states|stated)", replacement="state")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(step1|step2|step3|step4|steps|step)", replacement="phase") #HMMMMM CHECK THIS OUT!!
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(stimulated|stimulating|stimuli)", replacement="stimulate") #HMMMM 
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(stories)", replacement="story")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(strongly)", replacement="strong")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(structural|structured|structures|structuring)", replacement="structure")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(studentcentered|studentdirected)", replacement="studentcentred")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(students)", replacement="student")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(studied|studies)", replacement="study")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(subjects)", replacement="subject")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(subsequently)", replacement="subsequent")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(successful|successfully)", replacement="success")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(suggested)", replacement="suggest")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(summarized|summarizes|summarizing|summary)", replacement="summarize")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(supported|supporting|supports)", replacement="support")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(surrounding|surrounds)", replacement="surround")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(systematically)", replacement="systematic")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(taken|takes|taking)", replacement="take")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(talked)", replacement="talk")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(targeted|targeting|targets)", replacement="target")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(tasks)", replacement="task")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(teacher's|teachers|teaching)", replacement="teacher")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(technological|technologies)", replacement="technology")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(terms)", replacement="term")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(testing)", replacement="test")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(theoretical|theories|theories.|theory)", replacement="theory")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(thoughts)", replacement="thought")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(topics)", replacement="topic")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(tracked|tracking)", replacement="track")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(transformations)", replacement="transformation")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(translated|translates)", replacement="translate")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(type|types)", replacement="type")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(typically)", replacement="typical")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(understanding|understandings|understood)", replacement="understand")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(units)", replacement="unit")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(universityschool)", replacement="university")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(unlike|unlikely)", replacement="unlike")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(used|uses|using)", replacement="use")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(varieties)", replacement="variety")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(verbalization|verbally)", replacement="verbal")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(viewed|viewing)", replacement="view")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(way|ways)", replacement="way")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(word|words)", replacement="word")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(working|works)", replacement="work")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(writing|writings|written)", replacement="write")
allTheoretical <- tm_map(allTheoretical, content_transformer(gsub), pattern = "(yearold|years)", replacement="year")







wordstoremove<-c(stopwords("english"),"can")

#allFilesx <- tm_map(allFilesx, removeWords, c("endoffile"))
allTheoretical<-tm_map(allTheoretical,stripWhitespace)

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

edgelistsTheoretical<-lapply(allTheoretical,myWordNetwork,j.words=wordstoremove)
graphsTheoretical<-list()
for (i in 1:35){
  graphsTheoretical[[i]]<-graph.edgelist(edgelists[[i]],directed=T)
} 


allEdgeTheoretical<-rbind(edgelistsTheoretical[[1]],edgelistsTheoretical[[2]],edgelistsTheoretical[[3]],edgelistsTheoretical[[4]],edgelistsTheoretical[[5]],edgelistsTheoretical[[6]],edgelistsTheoretical[[7]],edgelistsTheoretical[[8]],edgelistsTheoretical[[9]],
             edgelistsTheoretical[[11]],edgelistsTheoretical[[12]],edgelistsTheoretical[[13]],edgelistsTheoretical[[14]],edgelistsTheoretical[[15]],edgelistsTheoretical[[16]],edgelistsTheoretical[[17]],edgelistsTheoretical[[18]],edgelistsTheoretical[[19]],
             edgelistsTheoretical[[21]],edgelistsTheoretical[[22]],edgelistsTheoretical[[23]],edgelistsTheoretical[[24]],edgelistsTheoretical[[25]],edgelistsTheoretical[[26]],edgelistsTheoretical[[27]],edgelistsTheoretical[[28]],edgelistsTheoretical[[29]],
             edgelistsTheoretical[[31]],edgelistsTheoretical[[32]],edgelistsTheoretical[[33]],edgelistsTheoretical[[34]],edgelistsTheoretical[[35]])

article01<-graph.edgelist(edgelistsTheoretical[[1]],directed=T)
article02<-graph.edgelist(edgelistsTheoretical[[2]],directed=T)
article03<-graph.edgelist(edgelistsTheoretical[[3]],directed=T)
article04<-graph.edgelist(edgelistsTheoretical[[4]],directed=T)
article05<-graph.edgelist(edgelistsTheoretical[[5]],directed=T)
article06<-graph.edgelist(edgelistsTheoretical[[6]],directed=T)
article07<-graph.edgelist(edgelistsTheoretical[[7]],directed=T)
article08<-graph.edgelist(edgelistsTheoretical[[8]],directed=T)
article09<-graph.edgelist(edgelistsTheoretical[[9]],directed=T)
article10<-graph.edgelist(edgelistsTheoretical[[10]],directed=T)
article11<-graph.edgelist(edgelistsTheoretical[[11]],directed=T)
article12<-graph.edgelist(edgelistsTheoretical[[12]],directed=T)
article13<-graph.edgelist(edgelistsTheoretical[[13]],directed=T)
article14<-graph.edgelist(edgelistsTheoretical[[14]],directed=T)
article15<-graph.edgelist(edgelistsTheoretical[[15]],directed=T)
article16<-graph.edgelist(edgelistsTheoretical[[16]],directed=T)
article17<-graph.edgelist(edgelistsTheoretical[[17]],directed=T)
article18<-graph.edgelist(edgelistsTheoretical[[18]],directed=T)
article19<-graph.edgelist(edgelistsTheoretical[[19]],directed=T)
article20<-graph.edgelist(edgelistsTheoretical[[20]],directed=T)
article21<-graph.edgelist(edgelistsTheoretical[[21]],directed=T)
article22<-graph.edgelist(edgelistsTheoretical[[22]],directed=T)
article23<-graph.edgelist(edgelistsTheoretical[[23]],directed=T)
article24<-graph.edgelist(edgelistsTheoretical[[24]],directed=T)
article25<-graph.edgelist(edgelistsTheoretical[[25]],directed=T)
article26<-graph.edgelist(edgelistsTheoretical[[26]],directed=T)
article27<-graph.edgelist(edgelistsTheoretical[[27]],directed=T)
article28<-graph.edgelist(edgelistsTheoretical[[28]],directed=T)
article29<-graph.edgelist(edgelistsTheoretical[[29]],directed=T)
article30<-graph.edgelist(edgelistsTheoretical[[30]],directed=T)
article31<-graph.edgelist(edgelistsTheoretical[[31]],directed=T)
article32<-graph.edgelist(edgelistsTheoretical[[32]],directed=T)
article33<-graph.edgelist(edgelistsTheoretical[[33]],directed=T)
article34<-graph.edgelist(edgelistsTheoretical[[34]],directed=T)
article35<-graph.edgelist(edgelistsTheoretical[[35]],directed=T)
allNetTheoretical<-graph.edgelist(allEdgeTheoretical,directed=T)
write.graph(allNetTheoretical,"allNetTheoreticl.graphml",format="graphml")
write.graph(article01,"article01.graphml",format="graphml")
write.graph(article02,"article02.graphml",format="graphml")
write.graph(article03,"article03.graphml",format="graphml")
write.graph(article04,"article04.graphml",format="graphml")
write.graph(article05,"article05.graphml",format="graphml")
write.graph(article06,"article06.graphml",format="graphml")
write.graph(article07,"article07.graphml",format="graphml")
write.graph(article08,"article08.graphml",format="graphml")
write.graph(article09,"article09.graphml",format="graphml")
write.graph(article10,"article10.graphml",format="graphml")
write.graph(article11,"article11.graphml",format="graphml")
write.graph(article12,"article12.graphml",format="graphml")
write.graph(article13,"article13.graphml",format="graphml")
write.graph(article14,"article14.graphml",format="graphml")
write.graph(article15,"article15.graphml",format="graphml")
write.graph(article16,"article16.graphml",format="graphml")
write.graph(article17,"article17.graphml",format="graphml")
write.graph(article18,"article18.graphml",format="graphml")
write.graph(article20,"article20.graphml",format="graphml")
write.graph(article21,"article21.graphml",format="graphml")
write.graph(article22,"article22.graphml",format="graphml")
write.graph(article23,"article23.graphml",format="graphml")
write.graph(article24,"article24.graphml",format="graphml")
write.graph(article25,"article25.graphml",format="graphml")
write.graph(article26,"article26.graphml",format="graphml")
write.graph(article27,"article27.graphml",format="graphml")
write.graph(article28,"article28.graphml",format="graphml")
write.graph(article29,"article29.graphml",format="graphml")
write.graph(article30,"article30.graphml",format="graphml")
write.graph(article31,"article31.graphml",format="graphml")
write.graph(article32,"article32.graphml",format="graphml")
write.graph(article33,"article33.graphml",format="graphml")
write.graph(article34,"article34.graphml",format="graphml")
write.graph(article35,"article35.graphml",format="graphml")

write.csv(V(allNet)$name,"listNodes.csv")


##allFilesx <- tm_map(allFilesx, removeWords,wordstoremove)

##-ngrams###
str<- concatenate(lapply(allFilesx ,"[", 1))
ngall1<- ngram(str, n=1) 
ngall2<- ngram(str, n=2)
ngall3<- ngram(str, n=3) 
ngall4<- ngram(str, n=4)
ngall5<- ngram(str, n=5)
ngall6<- ngram(str, n=6)
ngall7<- ngram(str, n=7)
ngall8<- ngram(str, n=8)

str1<-concatenate(allFilesx[[1]])

#as.numeric(get.ngrams(ng1)%in%get.ngrams(ng1_1))
#as.numeric(get.ngrams(ng5)%in%get.ngrams(ng1_5))

##FUNCTIONS FOR SIMILARITY NETWORK

pmat<-function(data,probs){
  pmat<-matrix(0,ncol=length(data[1,]),nrow=length(data[,1]))
  for(j in 1:length(data[,1])){
    pmat[j,]<-data[j,]*probs  
    
  }
  infmat<--log2(pmat)
  infmat[which(!is.finite(infmat))] <- NA
  return(infmat)
}


simRes<-function(i,j,infmat,d){
  y<-infmat[i,]
  overlap<-sum(y[which(d[i,]==d[j,])],na.rm=T)
  sinfi<-sum(infmat[i,],na.rm=T)
  sinfj<-sum(infmat[j,],na.rm=T)
  sim<-2*overlap/(sinfi+sinfj)
  return(sim)
}

simResk<-function(k,inf,d){
  simVec<-vector()
  for(i in 1:length(d[,1])){
    simVec[i]<-simRes(k,i,inf,d)
  }
  return(simVec)
}

simMatrix<-function(d,probs){
  inf<-pmat(d,probs)
  similarityMatrix<-matrix(data=0,ncol=length(d[,1]),nrow=length(d[,1]))
  for(i in 1:length(d[,1])){
    similarityMatrix[,i]<-simResk(i,inf,d)  
    
  }
  return(similarityMatrix)
}

###LIST OF STRINGS FOR PACKAGE N-GRAM
str1<-vector()
for(i in 1:length(allFilesx)){
  str1[i]<-concatenate(allFilesx[[i]])
}

###1-gram overlap
ng1<-list()
for(i in 1:length(allFilesx)){
  ng1[i]<-ngram(str1[i],n=1)
}

g1simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall1)))
for(i in 1:length(allFilesx)){
  str1[i]<-concatenate(allFilesx[[i]])
}
unique1grams<-sort(get.ngrams(ngall1))
colnames(g1simMat)<-unique1grams
for (i in 1:length(allFilesx)){
g1simMat[i,]<-as.numeric(unique1grams%in%get.ngrams(ng1[i][[1]]))
}
grams<-get.phrasetable(ngall1)[,1]
    frequencies<-get.phrasetable(ngall1)[,2] #not needed
probabilities<-get.phrasetable(ngall1)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g1simMat,probs)

net1gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

###2-gram overlap
ng2<-list()
for(i in 1:length(allFilesx)){
  ng2[i]<-ngram(str1[i],n=2)
}

g2simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall2)))

unique2grams<-sort(get.ngrams(ngall2))
colnames(g2simMat)<-unique2grams
for (i in 1:length(allFilesx)){
  g2simMat[i,]<-as.numeric(unique2grams%in%get.ngrams(ng2[i][[1]]))
}
grams<-get.phrasetable(ngall2)[,1]
frequencies<-get.phrasetable(ngall2)[,2] #not needed
probabilities<-get.phrasetable(ngall2)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g2simMat,probs)

net2gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

###3-gram overlap
ng3<-list()
for(i in 1:length(allFilesx)){
  ng3[i]<-ngram(str1[i],n=3)
}

g3simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall3)))

unique3grams<-sort(get.ngrams(ngall3))
colnames(g3simMat)<-unique3grams
for (i in 1:length(allFilesx)){
  g3simMat[i,]<-as.numeric(unique3grams%in%get.ngrams(ng3[i][[1]]))
}
grams<-get.phrasetable(ngall3)[,1]
frequencies<-get.phrasetable(ngall3)[,2] #not needed
probabilities<-get.phrasetable(ngall3)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g3simMat,probs)

net3gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

###4-gram overlap
ng4<-list()
for(i in 1:length(allFilesx)){
  ng4[i]<-ngram(str1[i],n=4)
}

g4simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall4)))

unique4grams<-sort(get.ngrams(ngall4))
colnames(g4simMat)<-unique4grams
for (i in 1:length(allFilesx)){
  g4simMat[i,]<-as.numeric(unique4grams%in%get.ngrams(ng4[i][[1]]))
}
grams<-get.phrasetable(ngall4)[,1]
frequencies<-get.phrasetable(ngall4)[,2] #not needed
probabilities<-get.phrasetable(ngall4)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g4simMat,probs)

net4gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

###5-gram overlap
ng5<-list()
for(i in 1:length(allFilesx)){
  ng5[i]<-ngram(str1[i],n=5)
}

g5simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall5)))

unique5grams<-sort(get.ngrams(ngall5))
colnames(g5simMat)<-unique5grams
for (i in 1:length(allFilesx)){
  g5simMat[i,]<-as.numeric(unique5grams%in%get.ngrams(ng5[i][[1]]))
}
grams<-get.phrasetable(ngall5)[,1]
frequencies<-get.phrasetable(ngall5)[,2] #not needed
probabilities<-get.phrasetable(ngall5)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g5simMat,probs)

net5gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

###6-gram overlap
ng6<-list()
for(i in 1:length(allFilesx)){
  ng6[i]<-ngram(str1[i],n=6)
}

g6simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall6)))

unique6grams<-sort(get.ngrams(ngall6))
colnames(g6simMat)<-unique6grams
for (i in 1:length(allFilesx)){
  g6simMat[i,]<-as.numeric(unique6grams%in%get.ngrams(ng6[i][[1]]))
}
grams<-get.phrasetable(ngall6)[,1]
frequencies<-get.phrasetable(ngall6)[,2] #not needed
probabilities<-get.phrasetable(ngall6)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g6simMat,probs)

net6gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

###7-gram overlap
ng7<-list()
for(i in 1:length(allFilesx)){
  ng7[i]<-ngram(str1[i],n=7)
}

g7simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall7)))

unique7grams<-sort(get.ngrams(ngall7))
colnames(g7simMat)<-unique7grams
for (i in 1:length(allFilesx)){
  g7simMat[i,]<-as.numeric(unique7grams%in%get.ngrams(ng7[i][[1]]))
}
grams<-get.phrasetable(ngall7)[,1]
frequencies<-get.phrasetable(ngall7)[,2] #not needed
probabilities<-get.phrasetable(ngall7)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g7simMat,probs)

net7gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

###8-gram overlap
ng8<-list()
for(i in 1:length(allFilesx)){
  ng8[i]<-ngram(str1[i],n=8)
}

g8simMat<-matrix(data=0,nrow = length(allFilesx),ncol = length(get.ngrams(ngall8)))

unique8grams<-sort(get.ngrams(ngall8))
colnames(g8simMat)<-unique8grams
for (i in 1:length(allFilesx)){
  g8simMat[i,]<-as.numeric(unique8grams%in%get.ngrams(ng8[i][[1]]))
}
grams<-get.phrasetable(ngall8)[,1]
frequencies<-get.phrasetable(ngall8)[,2] #not needed
probabilities<-get.phrasetable(ngall8)[,3]

probs<-probabilities[order(grams)] #corpus wide probabilities of words

testSim<-simMatrix(g8simMat,probs)

net8gram<-graph.adjacency(testSim,diag=F,weighted=T,mode = "upper")

V(net1gram)$id<-c(1:35)
net1gramBB<-backboneNetwork(net1gram,0.0295,2)
V(net2gram)$id<-c(1:35)
net2gramBB<-backboneNetwork(net2gram,0.0001,2)
V(net3gram)$id<-c(1:35)
net3gramBB<-backboneNetwork(net3gram,0.0001,2)

write.graph(net1gram,"net1gram.graphml",format="graphml")
write.graph(net2gram,"net2gram.graphml",format="graphml")
write.graph(net1gramBB,"net1gramBB.graphml",format="graphml")
write.graph(net2gramBB,"net2gramBB.graphml",format="graphml")
write.graph(net3gram,"net3gram.graphml",format="graphml")
write.graph(net3gramBB,"net3gramBB.graphml",format="graphml")
write.graph(net4gram,"net4gram.graphml",format="graphml")
write.graph(net5gram,"net5gram.graphml",format="graphml")
write.graph(net6gram,"net6gram.graphml",format="graphml")
write.graph(net7gram,"net7gram.graphml",format="graphml")
write.graph(net8gram,"net8gram.graphml",format="graphml")



