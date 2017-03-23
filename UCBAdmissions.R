UCBAdmissions
tmp <- as.data.frame(UCBAdmissions)
tmp
tmp <- lapply(tmp, function(x) rep(x,tmp$Freq))
tmp
tmp <- as.data.frame(tmp)
tmp
admit <- tmp[,c("Admit", "Gender", "Dept")]
admit

dept <- "A"
all <- sum(admit$Dept==dept)
pf <- sum(admit$Gender=="Female" & admit$Dept == dept)/all
pfanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Female" & admit$Dept==dept)/all
pfanda/pf
pm <- sum(admit$Gender=="Male" & admit$Dept==dept)/all
pmanda <- sum(admit$Admit=="Admitted" & admit$Gender=="Male" & admit$Dept==dept)/all
pmanda/pm


