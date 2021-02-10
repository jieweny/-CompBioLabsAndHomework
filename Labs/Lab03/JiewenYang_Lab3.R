
#lab step #2:
FlamingHotCheetos <- 5
Guests <- 8

#lab step #5
BagsOfChipsAverageGuestEat <- 0.5
LeftOverChips <- FlamingHotCheetos - Guests*BagsOfChipsAverageGuestEat - 0.4

#Part II
#step8: make vectors for each person's ranking.
self <- c(7,9,8,1,2,3,4,5,6)
penny <- c(5,9,8,3,1,2,4,7,6)
lenny <- c(6,5,4,9,8,7,3,2,1)
stewie <- c(1,9,5,6,8,7,2,3,4)
#step 9: access penny's ranking for episode IV
pennyIV <- penny[5]
#step 10: concatenate all 4 sets of ranking into single data object
ranking <- cbind(self,penny,lenny,stewie) 
#step 11: get penny's rank to episode 5 from the whole form.
str(pennyIV,penny,ranking)
#make a data frame. Method1:
ranking_frame <- data.frame(ranking,row.names = (NULL),
           check.names = (FALSE), fix.empty.names = (TRUE),
           stringsAsFactors = default.stringsAsFactors())
#-------------------Method2:
as.data.frame(ranking,row.names = NULL,optional = FALSE)
#step 13: 
  #got the number of column and rows.
dim(ranking)
dim(ranking_frame)
  #list the name of column and rows.
str(ranking,ranking_frame)
  #test the differences among the data
ranking==ranking_frame
  #determine the type of the data
typeof(ranking)
typeof(ranking_frame)
#step14:
ranking_row <- c("I","II","III","IV","V","VI","VII","VIII","IX")
#step15:add row names to the data frame.
help("row.names")
row.names(ranking) <- ranking_row
row.names(ranking_frame) <- ranking_row
#Accessing elements of matrices and data frames.
#step16: access third row in ranking 
ranking[3,]
#step17: access fourth column from ranking_frame.
ranking_frame[,4]
#step18: access ranking for episode V
ranking_frame[5,]
#step19: access penny's ranking for episode II
ranking_frame[2,"penny"]
#step20: access everyone's ranking for episodes IV-VI
ranking_frame[4:6,]
#step21: access everyone's rankings for episodes II,V, and VII.
ranking_frame[c(2,5,7),]
#step22: access rankings for just penny and stewie for just spisodes
#IV and VI
ranking_frame[c(4,6),c("penny","stewie")]
#switch penny's rankings for episode II and V
help("switch")
alternate_value <- ranking_frame[2,2]
ranking_frame[2,2] <- ranking_frame[5,2]
ranking_frame[5,2] <- alternate_value
#step24:try examples
ranking_frame["III","penny"]
ranking["III","penny"]      
#step25: use name rather than indexes undo switch made in step 23
alternate_value_2 <- ranking_frame["II","penny"]
ranking_frame["II","penny"] <- ranking_frame["V","penny"]
ranking_frame["V","penny"] <- alternate_value_2
#step 26: use $ operator to redo step 23
ranking_frame$lenny
alternate_value_3 <- ranking_frame$penny[2]
ranking_frame$penny[2] <- ranking_frame$penny[5]
ranking_frame$penny[5] <- alternate_value_3











