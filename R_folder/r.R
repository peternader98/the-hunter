txt <- readLines('Peter.txt')
txt1 <- strsplit(txt,split = " ")
fa <- factor(txt)
summary(fa)