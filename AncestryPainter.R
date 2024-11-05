conda activate r4.3
R

library("AncestryPainterV2")
setwd("/data01/wangyf/project2/CyprinusCarpio/15.pop/1.plink+admix/1.admix")

exp_q <- read.table("/data01/wangyf/project2/CyprinusCarpio/15.pop/1.plink+admix/1.admix/admixture.3.Q", header = F)
exp_ind <- read.table("/data01/wangyf/project2/CyprinusCarpio/15.pop/1.plink+admix/1.admix/name.ind", header = F, stringsAsFactors = F)

pdf("exp_ances.3.pdf", width = 45, height = 45)
        sectorplot(Q = exp_q, ind = exp_ind, target = "Irtysh", arrow = T)
dev.off()
