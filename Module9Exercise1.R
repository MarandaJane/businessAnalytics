df <- data.frame(PersonID=1:8, Name=c("Mr. Burns", "Ms. Krabappel", "Flanders, Mr.", "MR Homer Simpson", "Miss Lisa Simpson", "Mrs. Simpson", "Barney Gumble", "Bleeding Gums Murphy"))

#patterns
femalePattern <-"MS\\.|MISS|MRS\\."
malePattern <- "MR\\.|MR(\\s)"

#create vectors for %in%
vectorFemales<-grep(femalePattern, df$Name, ignore.case=TRUE, value=TRUE)
vectorMales<-grep(malePattern, df$Name, ignore.case=TRUE, value=TRUE)

#use comparator %in%
df$Female[df$Name %in% vectorFemales] <- TRUE
df$Female[df$Name %in% vectorMales]<- FALSE


