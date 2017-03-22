UCBAdmissions
tmp <- as.data.frame(UCBAdmissions)
tmp
tmp <- lapply(tmp, function(x) rep(x,tmp$Freq))
tmp
tmp <- as.data.frame(tmp)
tmp
admit <- tmp[,c("Admit", "Gender", "Dept")]
admit


all <- sum(admit$Dept=="A")
pf <- sum(admit$Gender=="Female" & admit$Dept == "A")/all
pfanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Female" & admit$Dept=="A")/all
pfanda/pf
pm <- sum(admit$Gender=="Male" & admit$Dept=="A")/all
pmanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Male" & admit$Dept=="A")/all
pmanda/pm
all <- sum(admit$Dept=="B")
pf <- sum(admit$Gender=="Female" & admit$Dept == "B")/all
pfanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Female" & admit$Dept=="B")/all
pfanda/pf
pm <- sum(admit$Gender=="Male" & admit$Dept=="B")/all
pmanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Male" & admit$Dept=="B")/all
pmanda/pm
all <- sum(admit$Dept=="C")
pf <- sum(admit$Gender=="Female" & admit$Dept == "C")/all
pfanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Female" & admit$Dept=="C")/all
pfanda/pf
pm <- sum(admit$Gender=="Male" & admit$Dept=="C")/all
pmanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Male" & admit$Dept=="C")/all
pmanda/pm
all <- sum(admit$Dept=="D")
pf <- sum(admit$Gender=="Female" & admit$Dept == "D")/all
pfanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Female" & admit$Dept=="D")/all
pfanda/pf
pm <- sum(admit$Gender=="Male" & admit$Dept=="D")/all
pmanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Male" & admit$Dept=="D")/all
pmanda/pm
all <- sum(admit$Dept=="E")
pf <- sum(admit$Gender=="Female" & admit$Dept == "E")/all
pfanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Female" & admit$Dept=="E")/all
pfanda/pf
pm <- sum(admit$Gender=="Male" & admit$Dept=="E")/all
pmanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Male" & admit$Dept=="E")/all
pmanda/pm
all <- sum(admit$Dept=="F")
pf <- sum(admit$Gender=="Female" & admit$Dept == "F")/all
pfanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Female" & admit$Dept=="F")/all
pfanda/pf
pm <- sum(admit$Gender=="Male" & admit$Dept=="F")/all
pmanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Male" & admit$Dept=="F")/all
pmanda/pm

