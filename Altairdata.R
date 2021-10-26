#get the data for altair data

#import library
library(tidyr)
library(dplyr)

#read data of one week for household 4
#first get a regular day consumption image compares the average of that week 
JUNE11<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-27.csv',header=FALSE)
JUNE21<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-28.csv',header=FALSE)
JUNE31<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-29.csv',header=FALSE)
JUNE41<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-30.csv',header=FALSE)
JUNE51<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-01.csv',header=FALSE)
JUNE61<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-02.csv',header=FALSE)
JUNE71<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-03.csv',header=FALSE)
OneWeek4<-data.frame(JUNE11,JUNE21,JUNE31,JUNE41,JUNE51,JUNE61,JUNE71)
colnames(OneWeek4)<-c("Day1","Day2","Day3","Day4","Day5","Day6","Day7")
OneWeek4$Total <- rowSums(OneWeek4)
#OneWeek$ID <-"Household 4"
#OneWeek_e$ID <-"Household 4"

e1<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-27.csv',header=FALSE)
e2<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-28.csv',header=FALSE)
e3<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-29.csv',header=FALSE)
e4<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-30.csv',header=FALSE)
e5<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-01.csv',header=FALSE)
e6<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-02.csv',header=FALSE)
e7<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-03.csv',header=FALSE)
OneWeek_e4<-data.frame(e1,e2,e3,e4,e5,e6,e7)
colnames(OneWeek_e4)<-c("Day1","Day2","Day3","Day4","Day5","Day6","Day7")
OneWeek_e4$Total <- rowSums(OneWeek_e4)
#OneWeek_e$ID <-"Household 4"

#one week total consumption for household 5
JUNE1<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/05/2012-06-27.csv',header=FALSE)
JUNE2<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/05/2012-06-28.csv',header=FALSE)
JUNE3<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/05/2012-06-29.csv',header=FALSE)
JUNE4<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/05/2012-06-30.csv',header=FALSE)
JUNE5<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/05/2012-07-01.csv',header=FALSE)
JUNE6<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/05/2012-07-02.csv',header=FALSE)
JUNE7<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/05/2012-07-03.csv',header=FALSE)
OneWeek5<-data.frame(JUNE1,JUNE2,JUNE3,JUNE4,JUNE5,JUNE6,JUNE7)
colnames(OneWeek5)<-c("Day1","Day2","Day3","Day4","Day5","Day6","Day7")
OneWeek5$Total <- rowSums(OneWeek5)
#OneWeek5$ID <-"Household 5"


e1<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/06/2012-06-27.csv',header=FALSE)
e2<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/06/2012-06-28.csv',header=FALSE)
e3<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/06/2012-06-29.csv',header=FALSE)
e4<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/06/2012-06-30.csv',header=FALSE)
e5<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/06/2012-07-01.csv',header=FALSE)
e6<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/06/2012-07-02.csv',header=FALSE)
e7<-read.csv('D:/2021Fall/503visualization/eco/05_plugs/05/06/2012-07-03.csv',header=FALSE)
OneWeek_e5<-data.frame(e1,e2,e3,e4,e5,e6,e7)
colnames(OneWeek_e5)<-c("Day1","Day2","Day3","Day4","Day5","Day6","Day7")
OneWeek_e5$Total <- rowSums(OneWeek_e5)
#OneWeek_e5$ID <-"Household 5"


#one week total consumption for household 6
JUNE1<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/05/2012-06-27.csv',header=FALSE)
JUNE2<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/05/2012-06-28.csv',header=FALSE)
JUNE3<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/05/2012-06-29.csv',header=FALSE)
JUNE4<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/05/2012-06-30.csv',header=FALSE)
JUNE5<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/05/2012-07-01.csv',header=FALSE)
JUNE6<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/05/2012-07-02.csv',header=FALSE)
JUNE7<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/05/2012-07-03.csv',header=FALSE)
OneWeek_e6<-data.frame(JUNE1,JUNE2,JUNE3,JUNE4,JUNE5,JUNE6,JUNE7)
colnames(OneWeek_e6)<-c("Day1","Day2","Day3","Day4","Day5","Day6","Day7")
OneWeek_e6$Total <- rowSums(OneWeek_e6)
#OneWeek_e6$ID <-"Household 5"


e1<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/06/2012-06-27.csv',header=FALSE)
e2<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/06/2012-06-28.csv',header=FALSE)
e3<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/06/2012-06-29.csv',header=FALSE)
e4<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/06/2012-06-30.csv',header=FALSE)
e5<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/06/2012-07-01.csv',header=FALSE)
e6<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/06/2012-07-02.csv',header=FALSE)
e7<-read.csv('D:/2021Fall/503visualization/eco/06_plugs/06/06/2012-07-03.csv',header=FALSE)
OneWeek6<-data.frame(e1,e2,e3,e4,e5,e6,e7)
colnames(OneWeek6)<-c("Day1","Day2","Day3","Day4","Day5","Day6","Day7")
OneWeek6$Total <- rowSums(OneWeek6)
#OneWeek6$ID <-"Household 6"

#group 3600 rows so that we could get data for each hour

OneWeek6<-rowsum(OneWeek6,rep(1:24,each = 3600))
OneWeek5<-rowsum(OneWeek5,rep(1:24,each = 3600))
OneWeek4<-rowsum(OneWeek4,rep(1:24,each = 3600))
OneWeek_e6<-rowsum(OneWeek_e6,rep(1:24,each = 3600))
OneWeek_e5<-rowsum(OneWeek_e5,rep(1:24,each = 3600))
OneWeek_e4<-rowsum(OneWeek_e4,rep(1:24,each = 3600))

#add label for each household
OneWeek4$ID <-"Household 4"
OneWeek_e4$ID <-"Household 4"
OneWeek5$ID <-"Household 5"
OneWeek_e5$ID <-"Household 5"
OneWeek6$ID <-"Household 6"
OneWeek_e6$ID <-"Household 6"

#bind rows and save data
fri_56<-bind_rows(OneWeek5,OneWeek6)
Ent_56<-bind_rows(OneWeek_e6,OneWeek_e5)
fri_56$time<-c("01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
Ent_56$time<-c("01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
OneWeek4$time<-c("01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
OneWeek_e4$time<-c("01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
write.csv(OneWeek4,"D:/2021Fall/503visualization/eco/FridgeWeeklyfor4.csv")
write.csv(OneWeek_e4,"D:/2021Fall/503visualization/eco/EntWeeklyfor4.csv")
write.csv(fri_56,"D:/2021Fall/503visualization/eco/FridgeWeeklyfor56.csv")
write.csv(Ent_56,"D:/2021Fall/503visualization/eco/EntWeeklyfor56.csv")

