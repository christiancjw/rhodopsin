#Commands for rhodopsin presentation figures

library(ape)
library(ggtree)

#Import the big phylogenetic tree

phy <-read.tree("RAxML_Partitioned_Best_Tree_Bootstraps.tre")

to_keep2 <- c("Ascaphus_truei", "Leiopelma_archeyi", "Bombina_bombina", "Alytes_obstetricans", "Rhinophrynus_dorsalis", "Xenopus_laevis", "Scaphiopus_holbrookii", "Pelodytes_ibericus", "Pelobates_cultripes", "Brachytarsophrys_carinense", "Heleophryne_regis", "Nasikabatrachus_sahyadrensis", "Sooglossus_sechellensis", "Gastrophryne_olivacea", "Hemisus_marmoratus", "Breviceps_macrops", "Arthroleptis_stenodactylus", "Hyperolius_ruvuensis", "Micrixalus_fuscus", "Conraua_goliath", "Petropedetes_perreti", "Pyxicephalus_adspersus", "Odontobatrachus_natator", "Ptychadena_cooperi", "Phrynobatrachus_krefftii", "Nyctibatrachus_major", "Cornufer_guppyi", "Quasipaa_spinosa", "Indirana_beddomii", "Amolops_torrentis", "Mantella_viridis", "Polypedates_leucomystax", "Calyptocephalella_gayi", "Myobatrachus_gouldii", "Rhinoderma_darwinii", "Batrachyla_leptopus", "Alsodes_nodosus", "Hylodes_ornatus", "Cycloramphus_carvalhoi", "Telmatobius_culeus", "Ceratophrys_ornata", "Hemiphractus_proboscideus", "Hyla_arborea", "Dendrobates_auratus", "Ceuthomantis_smaragdinus", "Eleutherodactylus_longipes", "Brachycephalus_ephippium", "Craugastor_podiciferus", "Allophryne_ruthveni", "Centrolene_muelleri", "Leptodactylus_fuscus", "Odontophrynus_americanus", "Bufo_bufo")

phy2 <-keep.tip(phy, to_keep2)

phy2$tip.label

Family_tiplabels2 <- c("Leiopelmatidae", "Ascaphidae", "Bombinatoridae", "Alytidae", "Rhinophrynidae", "Pipidae", "Scaphiopodidae", "Pelodytidae", "Pelobatidae", "Megophryidae", "Heleophrynidae", "Rhinodermatidae", "Brachycephalidae", "Craugastoridae", "Eleutherodactylidae", "Ceuthomantidae", "Dendrobatidae", "Odontophrynidae", "Bufonidae", "Allophrynidae", "Centrolenidae", "Leptodactylidae", "Hylidae", "Ceratophryidae", "Hemiphractidae", "Telmatobiidae", "Alsodidae", "Batrachylidae", "Hylodidae", "Cycloramphidae", "Myobatrachidae", "Calyptocephalellidae", "Nasikabatrachidae", "Sooglossidae", "Microhylidae", "Hemisotidae", "Brevicepitidae", "Hyperoliidae", "Arthroleptidae", "Micrixalidae", "Ptychadenidae", "Phrynobatrachidae", "Odontobatrachidae", "Pyxicephalidae", "Petropedetidae", "Conrauidae", "Ceratobatrachidae", "Nyctibatrachidae", "Ranixalidae", "Dicroglossidae", "Rhacophoridae", "Mantellidae", "Ranidae")           

phy2$tip.label <- Family_tiplabels2

phy2$tip.label

plot(phy2)

ggtree(phy2) + geom_tiplab(size = 3, align=FALSE) + geom_treescale() + geom_rootedge(rootedge = 0.1) + xlim(0,1.5) 

#Highlight clade with no rhodopsin data

ggtree(phy2) + geom_tiplab() + geom_hilight(node=43, fill="red") + geom_treescale() + geom_rootedge(rootedge = 0.1) + xlim(0,1.5) 

#Make node tips with colours

tip_metadata <- read.table("tip_color_rho.txt")

ggtree(phy2) + geom_tiplab(size = 3, align=FALSE) + geom_treescale() + geom_tippoint(color=tip_metadata$Rhodopsin) + geom_rootedge(rootedge = 0.1) + xlim(0,1.5) 



