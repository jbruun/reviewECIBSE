#NEED TO FIX!! GSUB DESTROYS CORPUS!!

library(tm)
library(igraph)
library(ngram)
setwd("H:/Publications/Peer-Reviewed Articles/InProgress/IBSE_definitions/analyses")
#Load the files we need
allFilesx <-Corpus(DirSource("texts/textPrepared", encoding="UTF-8"), readerControl = list(language="lat")) 
allFilesx<-tm_map(allFilesx,tolower)
allFilesx<-tm_map(allFilesx,removePunctuation)
allFilesx<-tm_map(allFilesx,stripWhitespace)



#synonymous words
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(accompanies|accompanying)", replacement = "accompanied")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "accordingly", replacement = "according")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(achieve2013|achieving)", replacement = "achieve")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(acknowledged|acknowledges)", replacement = "acknowledge")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(acquiring|acquired)", replacement = "acquire")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "acted", replacement = "act")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "actions", replacement = "action")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "actively", replacement = "active")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "activities", replacement = "activity")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(actuality|actually)", replacement = "actual")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "adaptively", replacement = "adaptable")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(additionally|additional|addition|added)", replacement = "add")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(addressing|addressed)", replacement = "address")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "adults", replacement = "adult")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "advanced", replacement = "advance")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "aesthetically", replacement = "aesthetic")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "ages", replacement = "age")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "agreement", replacement = "agree")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(aimed|aims)", replacement = "aim")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(allowing|allowed|allows)", replacement = "allow")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "alongside", replacement = "along")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(analysis|analytical|analytic|analyze|analyzing)", replacement = "analyse")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(answered|answering|answers)", replacement = "answer")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "appearance", replacement = "appear")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "applications", replacement = "application")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(applying|applied)", replacement = "apply")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "approaches", replacement = "approach")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(appropriately|appropriateness)", replacement = "appropriate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(argumentation|arguments|argument|argues|argued)", replacement = "argue")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(arisen|arises|arising)", replacement="arise")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(articulated|articulating)",replacement="articulate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "artifacts", replacement = "artifact")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(asking|asks)",  replacement = "ask")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "aspects", replacement = "aspect")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(assigned|assigning)", replacement = "assign")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(associated|association)",replacement = "associate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(assumption|assumptions)",replacement = "assume")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "attributed", replacement="attribute")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(became|becomes|becoming)", replacement="become")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(beginning|begins)", replacement="begin")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "behaviors", replacement="behavior")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "attributed", replacement="attribute")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(beliefs|believed)", replacement="belief")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "books", replacement="book")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "broader", replacement="broad")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "builds", replacement="build")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "capabilities", replacement="capability")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(carried|carries)", replacement="carry")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(categorization|classification|categorizing|categorized|classified|categories|classify|category)", replacement="category_classify")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(centered|centred|centre)", replacement="center")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "centrality", replacement="central")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(challenging|challenged|challenges)", replacement="challenge")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "changes", replacement="change")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "characteristics", replacement="characteristic")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(child's|children|children's|childrens)", replacement="child")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "choices", replacement="choice")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(claimed|claims)", replacement="claim")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "classes", replacement="class")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "classrooms", replacement="classroom")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(coconstructing|coconstructors|coconstruction)", replacement="coconstruct")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "cognitively", replacement="cognitive")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(collaborating|collaborations|collaboration|collaboratively|collaborative|collaborators)", replacement="collaboration")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(collecting|collection|collected)", replacement="collect") #|collective ??
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(combination|combining|combined)", replacement="combine")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "comes", replacement="come")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(communicate|communicating|communication|communicative|communicators)", replacement="communicate") #|communities ??
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "communities", replacement="community")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "comparison", replacement="compare")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "completing", replacement="complete")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(complexities|complexity)", replacement="complex")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "components", replacement="component")	
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(comprised|comprises)", replacement="comprise")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "computers", replacement="computer")	
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(conceptualizing|conceptualized|conceptually|conceptualize|conceptions|conception|concepts)", replacement="concept")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(concerning|concerned)", replacement="concern")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(concluding|conclusions|concluded)", replacement="conclusion")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "conducting", replacement="conduct")	
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(confirmation|confirmed)", replacement="confirm")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "conflicts", replacement="conflict")	
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "conjectures", replacement="conjecture")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(connections|connection|connected|connects)", replacement="connect")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(consideration|considered|considers)", replacement="consider")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "consistently", replacement="consistent")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(consists|consisted)", replacement="consist")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(constituted|constitutes)", replacement="constitute")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(constructing|constructive|construction|constructed)", replacement="construct")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "constructivist", replacement="constructivism")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(contexts'|contexts|context')", replacement="context")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(contextsensitive'|contextualized)", replacement="contextual")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(continuously|continually|continuing|continued)", replacement="continue")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(conversational|conversations)", replacement="conversation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "correctly", replacement="correct")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(creating|created|creates)", replacement="create")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "creativity", replacement="creative")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "criteria", replacement="criterion")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "critically", replacement="critical")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(curricula|curricular)", replacement="curriculum")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(cyclical|cyclic)", replacement="cycle")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "dealing", replacement="deal")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "debates", replacement="debate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(decisionmaking|decisions|deciding)", replacement="decision")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(deeper|deeply)", replacement="deep")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(defining|defined)", replacement="define")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "degrees", replacement="degree")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "demonstration", replacement="demonstrate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(depending|depends)", replacement="depend")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(depiction|depicts)", replacement="depict")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(descriptions|description|described|describes|describe)", replacement="describe_ption")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(designing|designed)", replacement="design")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "detailed", replacement="detail")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(detection|detecting)", replacement="detect")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "determinate", replacement="determine")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(developmental|development|developing|developed|develops)", replacement="develop")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(johndewey|dewey1991p108|dewey1956pp47-48|dewey1910|deweys)", replacement="dewey")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(difference|differences|differ)", replacement="different")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(difficulty|dificult)", replacement="difficult")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(dimensions)", replacement="dimension")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(directed|directing|directly)", replacement="direct")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(discipline|disciplines)", replacement="discipline")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(discoveries|discovering|discovery)", replacement="discover")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(discussed|discussing|discussions|discussion)", replacement="discuss")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(display|displaying)", replacement="display")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(distinction|distinctions)", replacement="distinction")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(distinguish|distinguished)", replacement="distinguish")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(domain|domains|domainspecific)", replacement=" ")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(drawings|drawing|drawn|draws)", replacement="draw")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(earlier|early)", replacement="early")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(easier|easily)", replacement="easy")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(educated|educational|education|educative)", replacement="education")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(effectively|effectiveness|effective)", replacement="effect")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(elaborated|elaborating|elaboration)", replacement="elaborate")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(embedded|embedding|embeds)", replacement="embed")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(emergent|emerges|emerging)", replacement="emerge")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(emphasis|emphasized|emphasizes|emphasizing)", replacement="emphasize")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(employed|employing)", replacement="employ")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(enables|enabling)", replacement="enable")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(encouraged encourages|encouraging)", replacement="encourage")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(engaged engagement|engages|engaging)", replacement="engage")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "ends", replacement="end")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(enhancements|enhancing)", replacement="enhance")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(entities)", replacement="entity")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(environments|environments)", replacement="environment")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(epistemologically|epistemological)", replacement="epistemic")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(established|establishing)", replacement="establish")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(evaluated|evaluating|evaluation)", replacement="evaluate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "eshachfried2005p327", replacement="eshachfried2005")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(examined|examines|examining)", replacement="examine")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(expansion)", replacement="expand")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(experimental|experimentation|experimenting|experiments)", replacement="experiment")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(explained|explaining)", replacement="explain")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(explanations|explanatory)", replacement="explanation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(explicitly)", replacement="explicit")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(explorations|exploration|exploratory|explored|exploring)", replacement="explore")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(expressed|expressing)", replacement="express")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(extended|extending|extends)", replacement="extend")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(facilitated|facilitates|facilitating|facilitators|facilitator)", replacement="facilitate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(facts|factual)", replacement="fact")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(familiar|family)", replacement="family")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(features)", replacement="feature")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(finding|findings)", replacement="find")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(floating)", replacement="float")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(foci|focused|focuses|focusing)", replacement="focus")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(followed|following)", replacement="follow")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(forms)", replacement="form")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(formally)", replacement="formal")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(formats)", replacement="format")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(formulating|formulation)", replacement="formulate")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(framed|frames)", replacement="frame")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(frameworks)", replacement="framework")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(freedom)", replacement="free")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(french2004p147)", replacement="french2004")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(fully)", replacement="full")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(functioning|functions)", replacement="function")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(gained|gaining)", replacement="gain")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(gathering)", replacement="gather")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(generalization|generalizing)", replacement="general")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(generated|generates|generatingd|generating)", replacement="generate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(get)", replacement="get")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(give|given gives|giving)", replacement="give")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(goal-orientated|goals|goaloriented)", replacement="goal")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(grades)", replacement="grade")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(grain'|grained)", replacement="grain")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(greater|greatly)", replacement="great")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(grounds)", replacement="grounded")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(grouped|groups)", replacement="group")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(guidance|guided|guidelines|guides|guiding)", replacement="guide")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(higher|highly)", replacement="high")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(hypotheses|hypothesizing)", replacement="hypothesis")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(ideas)", replacement="idea")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(identification|identified|identifying)", replacement="identify")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(implies)", replacement="imply")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(importance)", replacement="important")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(included|includes|including|inclusion)", replacement="include")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(incorporates)", replacement="incorporate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(increases|increasing|increasingly)", replacement="increase")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(independence)", replacement="independent")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(indicated|indicates)", replacement="indicate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(individual's|individuals)", replacement="individual")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(inferences|inference|inferring)", replacement="infer")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(influenced|influential)", replacement="influence")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(informative|informed)", replacement="inform")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(initially)", replacement="initial")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(initiating)", replacement="initiate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(inquirer|inquiries|inquiring|inquirybased)", replacement="inquiry")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(inspired|inspiring)", replacement="inspire")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(instances)", replacement="instance")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(instructional|instructionally)", replacement="instruction")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(integrated|integrating|integration)", replacement="integrate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(intentionally|intentions)", replacement="intent")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(interacting|interactions)", replacement="interaction")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(curiosity|interesting|interests|interests)", replacement="interest")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(interpretations|interpretation|interpreted|interpreting|interprets)", replacement="interpret")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(introduced|introduces|introducing|introduction)", replacement="introduce")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(investigating|investigations|investigation)", replacement="investigate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(involved|involves|involving)", replacement="involve")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(judging|judgments)", replacement="judge")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(kindergarteners|kindergartners)", replacement="kindergartener")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(kinds)", replacement="kind")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(knew|knowing|known)", replacement="know")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(labs)", replacement="laboratory")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(larger)", replacement="large")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(leading|leads)", replacement="lead")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(learn|learned|learning)", replacement="learn")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(learners|learners')", replacement="learner")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(lesser)", replacement="less")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(lessons)", replacement="lesson")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(levels)", replacement="level")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(listening|listens)", replacement="listen")
#allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(living-nonliving|living)", replacement=" ")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(locally)", replacement="local")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(located|locations)", replacement="location")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(logical|logically)", replacement=" ")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(longer)", replacement="longterm")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(looking)", replacement="look")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(losing)", replacement="lose")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(major|majors)", replacement="major") #HMMM
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(makes|making)", replacement="make")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(manageable)", replacement="manage")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(manifest|manifested)", replacement="manifest")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(manipulating|manipulation)", replacement="manipulation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(map|mapping)", replacement="map")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(master|mastery)", replacement="master")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(material|materials)", replacement="material")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(mathematically|mathematics|mathematic)", replacement="mathematical")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(meaning'|meaningful|meaningfully|meanings|mean)", replacement="meaning")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(measured|measurements|measure)", replacement="measurement")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(members|membership)", replacement="member")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(mental|mentally)", replacement="mental")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(method|methods)", replacement="method")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(midwest|midwestern)", replacement="midwest")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(model|modelbased|modeling|modelling|models)", replacement="model")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(modified|modify|modifying)", replacement="modify")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(moment|moments)", replacement="moment")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(movements|moves|moving)", replacement="move")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(mutual|mutually)", replacement="mutual")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(natural|naturally)", replacement="natural")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(necessarily)", replacement="necessary")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(needed|needs)", replacement="need")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(newfound)", replacement="new")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(normative|norms)", replacement="norm")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(noted|notes)", replacement="note")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(notions)", replacement="notion")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(numbers|numeracy)", replacement="number") #HMMM
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(objects|objects')", replacement="object")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(observations)", replacement="observation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(observed|observes|observing)", replacement="observe")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(obtaining)", replacement="obtain")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(operates)", replacement="operate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(opportunities)", replacement="opportunity")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(organized|organizing)", replacement="organize")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(orientated|orientation|oriented)", replacement="orient")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(original|originally)", replacement="original")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(others')", replacement="others")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(outcomes)", replacement="outcome")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(overarching)", replacement="overall")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(participating|participation)", replacement="participate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(participants)", replacement="participant")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(particularly)", replacement="particular")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(partnerships|partnerships|partners)", replacement="partner")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(paths|pathway)", replacement="path")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(patterns)", replacement="pattern")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(pedagogical|pedagogically)", replacement="pedagogy")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(pedagogies|pedagogy)", replacement="pedagogy")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(perceive|perceived)", replacement="perceive")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(periods)", replacement="period")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(personally)", replacement="personal")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(perspectives)", replacement="perspective")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(phase1|phase2|phase3|phases)", replacement="phase")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(phenomena)", replacement="phenomenon")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(photography)", replacement="photo")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(phrased|phrases)", replacement="phrase")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(physically)", replacement="physical")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(pictures)", replacement="picture")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(place|placed|places)", replacement="place")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(plans|planned|planning)", replacement="plan")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(plant|plants)", replacement="plant")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(plays)", replacement="play")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(pointed|points)", replacement="point")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(posed)", replacement="pose")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(powerfully)", replacement="powerful")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(practiced|practices)", replacement="practice")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(predicted|predicting|prediction|predictions)", replacement="predict")
#allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(prediction|predictions)", replacement="predict")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(preparation|prepared)", replacement="prepare")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(preprimarylevel|kindergarten)", replacement="kindergarten")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(preschool|preschoolers|preschoolers'|kindergartner)", replacement="kindergartener")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(present|presented|presenting|presents)", replacement="present")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(previously)", replacement="previous")
#allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(primarily|firsthand|first)", replacement="prime")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(principles)", replacement="principle")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(problems)", replacement="problem")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(procedures)", replacement="procedure")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(process-ask|processes)", replacement="process")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(production|productive|producing|produce)", replacement="product") #HMMM
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(proficiency|proficient)", replacement="proficient")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(program|programme)", replacement="program")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(progression|progressively)", replacement="progression")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(projectbased|projects)", replacement="project")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(promote|promotes|promotion)", replacement="promote")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(proposed|proposing|propos)", replacement="propose")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(provided|provides|providing)", replacement="provide")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(provocateurs)", replacement="provocateur")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(putting)", replacement="put")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(queries)", replacement="query")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(questioning|questions)", replacement="question")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(raising)", replacement="raise")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(ranging)", replacement="range")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(reached)", replacement="reach")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(realistic|reality)", replacement="real")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(realworld)", replacement="reallife")

allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(recognition|recognizing|recognize)", replacement="recognise")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(recommendations|recommended|recommends)", replacement="recommend")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(reconstructing)", replacement="reconstruct")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(recorded|recording)", replacement="record")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(referring|refers)", replacement="refer")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(refined|refining)", replacement="refine")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(reflecting|reflections|reflection|reflects)", replacement="reflect")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(regarding|regarded)", replacement="regard")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(reinforced|reinforcement|reinforcing)", replacement="reinforce")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(relating|related|relates)", replacement="relate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(relationbased)", replacement="relation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(relationship|relationships|relations)", replacement="relation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(relevant)", replacement="relevance")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(relies|relying)", replacement="rely")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(repeatedly)", replacement="repeated")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(reported)", replacement="report")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(representing|representations)", replacement="represent")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(representational)", replacement="representation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(requires|requiring|requirement)", replacement="require")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(researchers|researcher)", replacement="research") #HMMM
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(resources)", replacement="resource")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(respected)", replacement="respect")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(responds|response)", replacement="respond")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(results)", replacement="result")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(reviewed|reviewing)", replacement="review")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(revising)", replacement="revise")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(roles)", replacement="role")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(scaffolded|scaffolding|scaffolds)", replacement="scaffold")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(schools)", replacement="school")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(sciencerelated|sciences|scientific|scientifically)", replacement="science") #HMMMM
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(scientists)", replacement="scientist")
#allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(second|secondary)", replacement=" ") #HMMM
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(seeking|seeks)", replacement="seek")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(seemed|seems)", replacement="seem")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(selected|selecting|selectively)", replacement="select")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(sensemaking)", replacement="sense")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(sequencing|sequentially|sequential)", replacement="sequence")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(serves|serving)", replacement="serve")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(sessions)", replacement="session")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(sets)", replacement="set")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(settings)", replacement="setting")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(shaped|shaping)", replacement="shape")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(shared)", replacement="share")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(shifts)", replacement="shift")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(shows)", replacement="shown")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(similarities|similarly)", replacement="similar")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(simply)", replacement="simple")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(simulated|simulations)", replacement="simulation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(sinking)", replacement="sink")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(situated|situating)", replacement="situate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(situations)", replacement="situation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(skills)", replacement="skill")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(smaller)", replacement="small")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(solely)", replacement="sole")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(solutions)", replacement="solution")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(solving)", replacement="solve")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(sources)", replacement="source")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(specification|specified|specifying)", replacement="specify") #HMMM
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(stages)", replacement="stage")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(started|starting|starts)", replacement="start")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(statement|statements|states|stated)", replacement="state")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(step1|step2|step3|step4|steps|step)", replacement="phase") #HMMMMM CHECK THIS OUT!!
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(stimulated|stimulating|stimuli)", replacement="stimulate") #HMMMM 
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(stories)", replacement="story")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(strongly)", replacement="strong")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(structural|structured|structures|structuring)", replacement="structure")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(studentcentered|studentdirected)", replacement="studentcentred")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(students)", replacement="student")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(studied|studies)", replacement="study")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(subjects)", replacement="subject")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(subsequently)", replacement="subsequent")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(successful|successfully)", replacement="success")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(suggested)", replacement="suggest")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(summarized|summarizes|summarizing|summary)", replacement="summarize")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(supported|supporting|supports)", replacement="support")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(surrounding|surrounds)", replacement="surround")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(systematically)", replacement="systematic")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(taken|takes|taking)", replacement="take")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(talked)", replacement="talk")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(targeted|targeting|targets)", replacement="target")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(tasks)", replacement="task")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(teacher's|teachers|teaching)", replacement="teacher")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(technological|technologies)", replacement="technology")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(terms)", replacement="term")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(testing)", replacement="test")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(theoretical|theories|theories.|theory)", replacement="theory")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(thoughts)", replacement="thought")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(topics)", replacement="topic")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(tracked|tracking)", replacement="track")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(transformations)", replacement="transformation")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(translated|translates)", replacement="translate")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(type|types)", replacement="type")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(typically)", replacement="typical")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(understanding|understandings|understood)", replacement="understand")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(units)", replacement="unit")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(universityschool)", replacement="university")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(unlike|unlikely)", replacement="unlike")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(used|uses|using)", replacement="use")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(varieties)", replacement="variety")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(verbalization|verbally)", replacement="verbal")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(viewed|viewing)", replacement="view")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(way|ways)", replacement="way")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(word|words)", replacement="word")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(working|works)", replacement="work")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(writing|writings|written)", replacement="write")
allFilesx <- tm_map(allFilesx, content_transformer(gsub), pattern = "(yearold|years)", replacement="year")







wordstoremove<-c(stopwords("english"),"can")

#allFilesx <- tm_map(allFilesx, removeWords, c("endoffile"))
allFilesx<-tm_map(allFilesx,stripWhitespace)

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

edgelists<-lapply(allFilesx,myWordNetwork,j.words=wordstoremove)
graphs<-list()
for (i in 1:35){
  graphs[[i]]<-graph.edgelist(edgelists[[i]],directed=T)
} 


allEdge<-rbind(edgelists[[1]],edgelists[[2]],edgelists[[3]],edgelists[[4]],edgelists[[5]],edgelists[[6]],edgelists[[7]],edgelists[[8]],edgelists[[9]],
             edgelists[[11]],edgelists[[12]],edgelists[[13]],edgelists[[14]],edgelists[[15]],edgelists[[16]],edgelists[[17]],edgelists[[18]],edgelists[[19]],
             edgelists[[21]],edgelists[[22]],edgelists[[23]],edgelists[[24]],edgelists[[25]],edgelists[[26]],edgelists[[27]],edgelists[[28]],edgelists[[29]],
             edgelists[[31]],edgelists[[32]],edgelists[[33]],edgelists[[34]],edgelists[[35]])

article01<-graph.edgelist(edgelists[[1]],directed=T)
article02<-graph.edgelist(edgelists[[2]],directed=T)
article03<-graph.edgelist(edgelists[[3]],directed=T)
article04<-graph.edgelist(edgelists[[4]],directed=T)
article05<-graph.edgelist(edgelists[[5]],directed=T)
article06<-graph.edgelist(edgelists[[6]],directed=T)
article07<-graph.edgelist(edgelists[[7]],directed=T)
article08<-graph.edgelist(edgelists[[8]],directed=T)
article09<-graph.edgelist(edgelists[[9]],directed=T)
article10<-graph.edgelist(edgelists[[10]],directed=T)
article11<-graph.edgelist(edgelists[[11]],directed=T)
article12<-graph.edgelist(edgelists[[12]],directed=T)
article13<-graph.edgelist(edgelists[[13]],directed=T)
article14<-graph.edgelist(edgelists[[14]],directed=T)
article15<-graph.edgelist(edgelists[[15]],directed=T)
article16<-graph.edgelist(edgelists[[16]],directed=T)
article17<-graph.edgelist(edgelists[[17]],directed=T)
article18<-graph.edgelist(edgelists[[18]],directed=T)
article19<-graph.edgelist(edgelists[[19]],directed=T)
article20<-graph.edgelist(edgelists[[20]],directed=T)
article21<-graph.edgelist(edgelists[[21]],directed=T)
article22<-graph.edgelist(edgelists[[22]],directed=T)
article23<-graph.edgelist(edgelists[[23]],directed=T)
article24<-graph.edgelist(edgelists[[24]],directed=T)
article25<-graph.edgelist(edgelists[[25]],directed=T)
article26<-graph.edgelist(edgelists[[26]],directed=T)
article27<-graph.edgelist(edgelists[[27]],directed=T)
article28<-graph.edgelist(edgelists[[28]],directed=T)
article29<-graph.edgelist(edgelists[[29]],directed=T)
article30<-graph.edgelist(edgelists[[30]],directed=T)
article31<-graph.edgelist(edgelists[[31]],directed=T)
article32<-graph.edgelist(edgelists[[32]],directed=T)
article33<-graph.edgelist(edgelists[[33]],directed=T)
article34<-graph.edgelist(edgelists[[34]],directed=T)
article35<-graph.edgelist(edgelists[[35]],directed=T)
allNet<-graph.edgelist(allEdge,directed=T)
write.graph(allNet,"allNet.graphml",format="graphml")
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


allFilesx <- tm_map(allFilesx, removeWords,wordstoremove)

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

#Health Discussions
g1Health1<-as.matrix(myWordNetwork(allFilesx[[1]],joiningWords))
g1Health1<-g1Health1[-1,]
g1healthNet1<-graph.edgelist(g1Health1,directed=T)
V(g1healthNet1)$id<-V(g1healthNet1)$name
E(g1healthNet1)$weight<-1
g1healthNet1<-simplify(g1healthNet1,remove.multiple=T,edge.attr.comb="sum")

g2Health1<-as.matrix(myWordNetwork(allFilesx[[2]],joiningWords))
g3Health1<-as.matrix(myWordNetwork(allFilesx[[3]],joiningWords))
g5Health1<-as.matrix(myWordNetwork(allFilesx[[4]],joiningWords))
g1Health2<-as.matrix(myWordNetwork(allFilesx[[5]],joiningWords))
g2Health2<-as.matrix(myWordNetwork(allFilesx[[6]],joiningWords))
g3Health2<-as.matrix(myWordNetwork(allFilesx[[7]],joiningWords))
g5Health2<-as.matrix(myWordNetwork(allFilesx[[8]],joiningWords))

g2Health1<-g2Health1[-1,]
g3Health1<-g3Health1[-1,]
g5Health1<-g2Health1[-1,]
g1Health2<-g1Health2[-1,]
g2Health2<-g2Health2[-1,]
g3Health2<-g3Health2[-1,]
g5Health2<-g5Health2[-1,]



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
g1BioDiv1<-as.matrix(myWordNetwork(allFilesx[[9]],joiningWords))
g2BioDiv1<-as.matrix(myWordNetwork(allFilesx[[10]],joiningWords))
g3BioDiv1<-as.matrix(myWordNetwork(allFilesx[[11]],joiningWords))
g5BioDiv1<-as.matrix(myWordNetwork(allFilesx[[12]],joiningWords))
g1BioDiv2<-as.matrix(myWordNetwork(allFilesx[[13]],joiningWords))
g2BioDiv2<-as.matrix(myWordNetwork(allFilesx[[14]],joiningWords))
g3BioDiv2<-as.matrix(myWordNetwork(allFilesx[[15]],joiningWords))
g5BioDiv2<-as.matrix(myWordNetwork(allFilesx[[16]],joiningWords))
g1BioDiv3<-as.matrix(myWordNetwork(allFilesx[[17]],joiningWords))
g2BioDiv3<-as.matrix(myWordNetwork(allFilesx[[18]],joiningWords))
g3BioDiv3<-as.matrix(myWordNetwork(allFilesx[[19]],joiningWords))
g5BioDiv3<-as.matrix(myWordNetwork(allFilesx[[20]],joiningWords))

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
g1SusDev1<-as.matrix(myWordNetwork(allFilesx[[21]],joiningWords))
g2SusDev1<-as.matrix(myWordNetwork(allFilesx[[22]],joiningWords))
g3SusDev1<-as.matrix(myWordNetwork(allFilesx[[23]],joiningWords))
g5SusDev1<-as.matrix(myWordNetwork(allFilesx[[24]],joiningWords))
g1SusDev2<-as.matrix(myWordNetwork(allFilesx[[25]],joiningWords))
g2SusDev2<-as.matrix(myWordNetwork(allFilesx[[26]],joiningWords))
g3SusDev2<-as.matrix(myWordNetwork(allFilesx[[27]],joiningWords))
g5SusDev2<-as.matrix(myWordNetwork(allFilesx[[28]],joiningWords))


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
g1Gene1<-as.matrix(myWordNetwork(allFilesx[[29]],joiningWords))
g2Gene1<-as.matrix(myWordNetwork(allFilesx[[30]],joiningWords))
g3Gene1<-as.matrix(myWordNetwork(allFilesx[[31]],joiningWords))
g5Gene1<-as.matrix(myWordNetwork(allFilesx[[32]],joiningWords))

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
g1Sex1<-as.matrix(myWordNetwork(allFilesx[[33]],joiningWords))
g2Sex1<-as.matrix(myWordNetwork(allFilesx[[34]],joiningWords))
g3Sex1<-as.matrix(myWordNetwork(allFilesx[[35]],joiningWords))
g5Sex1<-as.matrix(myWordNetwork(allFilesx[[36]],joiningWords))
g1Sex2<-as.matrix(myWordNetwork(allFilesx[[37]],joiningWords))
g2Sex2<-as.matrix(myWordNetwork(allFilesx[[38]],joiningWords))
g3Sex2<-as.matrix(myWordNetwork(allFilesx[[39]],joiningWords))
g4Sex2<-as.matrix(myWordNetwork(allFilesx[[40]],joiningWords))
g5Sex2<-as.matrix(myWordNetwork(allFilesx[[41]],joiningWords))
g6Sex2<-as.matrix(myWordNetwork(allFilesx[[42]],joiningWords))


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
Baltic01<-as.matrix(myWordNetwork(allFilesx[[43]],joiningWords))
Baltic02<-as.matrix(myWordNetwork(allFilesx[[46]],joiningWords))
Baltic03<-as.matrix(myWordNetwork(allFilesx[[49]],joiningWords))

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

Health01<-as.matrix(myWordNetwork(allFilesx[[44]],joiningWords))
Health02<-as.matrix(myWordNetwork(allFilesx[[47]],joiningWords))
Health03<-as.matrix(myWordNetwork(allFilesx[[50]],joiningWords))

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

Wolves01<-as.matrix(myWordNetwork(allFilesx[[45]],joiningWords))
Wolves02<-as.matrix(myWordNetwork(allFilesx[[48]],joiningWords))
Wolves03<-as.matrix(myWordNetwork(allFilesx[[51]],joiningWords))

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
#####################
########WOLVES#######
#####################
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

wolvesG1D1<-delete.vertices(wolvesG1D1,which(V(wolvesG1D1)$id=="newturn"))
wolvesG1D2<-delete.vertices(wolvesG1D2,which(V(wolvesG1D2)$id=="newturn"))
wolvesG1D3<-delete.vertices(wolvesG1D3,which(V(wolvesG1D3)$id=="newturn"))
wolvesG2D1<-delete.vertices(wolvesG2D1,which(V(wolvesG2D1)$id=="newturn"))
wolvesG2D2<-delete.vertices(wolvesG2D2,which(V(wolvesG2D2)$id=="newturn"))
wolvesG2D3<-delete.vertices(wolvesG2D3,which(V(wolvesG2D3)$id=="newturn"))
wolvesG3D1<-delete.vertices(wolvesG3D1,which(V(wolvesG3D1)$id=="newturn"))
wolvesG3D2<-delete.vertices(wolvesG3D2,which(V(wolvesG3D2)$id=="newturn"))
wolvesG3D3<-delete.vertices(wolvesG3D3,which(V(wolvesG3D3)$id=="newturn"))
wolvesG5D1<-delete.vertices(wolvesG5D1,which(V(wolvesG5D1)$id=="newturn"))
wolvesG5D2<-delete.vertices(wolvesG5D2,which(V(wolvesG5D2)$id=="newturn"))
wolvesG5D3<-delete.vertices(wolvesG5D3,which(V(wolvesG5D3)$id=="newturn"))
wolv01<-delete.vertices(wolv01,which(V(wolv01)$id=="newturn"))
wolv02<-delete.vertices(wolv02,which(V(wolv02)$id=="newturn"))
wolv03<-delete.vertices(wolv03,which(V(wolv03)$id=="newturn"))

write.graph(wolvesG1D1,"wolvesG1D1_NF.net", format=c("pajek"))
write.graph(wolvesG1D2,"wolvesG1D2_NF.net", format=c("pajek"))
write.graph(wolvesG1D3,"wolvesG1D3_NF.net", format=c("pajek"))
write.graph(wolvesG2D1,"wolvesG2D1_NF.net", format=c("pajek"))
write.graph(wolvesG2D2,"wolvesG2D2_NF.net", format=c("pajek"))
write.graph(wolvesG2D3,"wolvesG2D3_NF.net", format=c("pajek"))
write.graph(wolvesG3D1,"wolvesG3D1_NF.net", format=c("pajek"))
write.graph(wolvesG3D2,"wolvesG3D2_NF.net", format=c("pajek"))
write.graph(wolvesG3D3,"wolvesG3D3_NF.net", format=c("pajek"))
write.graph(wolvesG5D1,"wolvesG5D1_NF.net", format=c("pajek"))
write.graph(wolvesG5D2,"wolvesG5D2_NF.net", format=c("pajek"))
write.graph(wolvesG5D3,"wolvesG5D3_NF.net", format=c("pajek"))
write.graph(wolv01,"wolvesGxD1_NF.net", format=c("pajek"))
write.graph(wolv02,"wolvesGxD2_NF.net", format=c("pajek"))
write.graph(wolv03,"wolvesGxD3_NF.net", format=c("pajek"))


#REMOVE NEWTURN
rem.newturn<-function(g){
  h<-delete.vertices(g,which(V(g)$id=="newturn"))
  return(h)
}

#Replace DATE with current date  before running.
write.graph(g1healthNet1,"g1healthNet9march2015.net", format=c("pajek"))
write.graph(healthNetD1,"healthNetD9march2015.net", format=c("pajek"))
write.graph(healthNetD2,"healthNetD9march2015.net", format=c("pajek"))
write.graph(healthNet,"healthNet9march2015.net", format=c("pajek"))
write.graph(g1healthNet,"healthNetg19march2015.net", format=c("pajek"))
write.graph(g2healthNet,"healthNetg29march2015.net", format=c("pajek"))
write.graph(g3healthNet,"healthNetg39march2015.net", format=c("pajek"))
write.graph(g5healthNet,"healthNetg59march2015.net", format=c("pajek"))
write.graph(biodivNetD1,"biodivNetD19march2015.net", format=c("pajek"))
write.graph(biodivNetD2,"biodivNetD29march2015.net", format=c("pajek"))
write.graph(biodivNetD3,"biodivNetD39march2015.net", format=c("pajek"))
write.graph(biodivNet,"biodivNet9march2015.net", format=c("pajek"))
write.graph(g1biodivNet,"biodivNetg19march2015.net", format=c("pajek"))
write.graph(g2biodivNet,"biodivNetg29march2015.net", format=c("pajek"))
write.graph(g3biodivNet,"biodivNetg39march2015.net", format=c("pajek"))
write.graph(g5biodivNet,"biodivNetg59march2015.net", format=c("pajek"))
write.graph(susdevNetD1,"susdevNetD19march2015.net", format=c("pajek"))
write.graph(susdevNetD2,"susdevNetD29march2015.net", format=c("pajek"))
write.graph(susdevNet,"susdevNet9march2015.net", format=c("pajek"))
write.graph(g1susdevNet,"susdevNetg19march2015.net", format=c("pajek"))
write.graph(g2susdevNet,"susdevNetg29march2015.net", format=c("pajek"))
write.graph(g3susdevNet,"susdevNetg39march2015.net", format=c("pajek"))
write.graph(g5susdevNet,"susdevNetg59march2015.net", format=c("pajek"))
write.graph(geneNet,"geneNet9march2015.net", format=c("pajek"))
write.graph(g1geneNet,"geneNetg19march2015.net", format=c("pajek"))
write.graph(g2geneNet,"geneNetg29march2015.net", format=c("pajek"))
write.graph(g3geneNet,"geneNetg39march2015.net", format=c("pajek"))
write.graph(g5geneNet,"geneNetg59march2015.net", format=c("pajek"))
write.graph(sexNet,"sexNet9march2015.net", format=c("pajek"))
write.graph(g1sexNet,"sexNetg19march2015.net", format=c("pajek"))
write.graph(g2sexNet,"sexNetg29march2015.net", format=c("pajek"))
write.graph(g3sexNet,"sexNetg39march2015.net", format=c("pajek"))
write.graph(g5sexNet,"sexNetg59march2015.net", format=c("pajek"))
write.graph(balAll,"new_balticAll9march2015.net", format=c("pajek"))
write.graph(healAll,"new_healthAll9march2015.net", format=c("pajek"))
write.graph(wolvAll,"new_wolvesAll9march2015.net", format=c("pajek"))
write.graph(allTopics,"allTopicsAllDiscussionsAllGroups9march2015.net", format=c("pajek"))
write.graph(allBB,"allTopicsAllDiscussionsAllGroups9march2015_BB.net", format=c("pajek"))

