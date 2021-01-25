txt <- read.table(file = "peter.txt",header = F,stringsAsFactors = T,sep = " ")
txt1 <- strsplit(txt,split = " ")
fa <- factor(txt)
summary(txt)