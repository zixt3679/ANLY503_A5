#import libraries
library(plotly)
library(tidyverse)

#read data
FRI627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-27.csv' ,header=FALSE)
#KIT627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/02/2012-06-27.csv',header=FALSE)
#LAM627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/03/2012-06-27.csv',header=FALSE)
#STE627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/04/2012-06-27.csv',header=FALSE)
#FRE627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/05/2012-06-27.csv',header=FALSE)
TAB627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/06/2012-06-27.csv',header=FALSE)
ENT627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/07/2012-06-27.csv',header=FALSE)
MIC627<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/08/2012-06-27.csv',header=FALSE)
colnames(FRI627)<-"Fridge"
#colnames(KIT627)<-"Kitchen appliances"
#colnames(LAM627)<-"Lamp"
#colnames(STE627)<-"Stereo"
#colnames(FRE627)<-"Freezer"
colnames(TAB627)<-"Tablet"
colnames(ENT627)<-"Entertainment"
colnames(MIC627)<-"Microwave"
ECO627<-data.frame(FRI627,TAB627,ENT627,MIC627)
head(ECO627)


#get a dataset only consists fridge at the end of days in each month
JUNE<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-30.csv',header=FALSE)
JULY<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-31.csv',header=FALSE)
AUGUST<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-08-31.csv',header=FALSE)
SEPTEMBER<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-09-30.csv',header=FALSE)
OCTOBER<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-10-20.csv',header=FALSE)
NOVEMBER<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-11-30.csv',header=FALSE)
DECEMBER<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-12-31.csv',header=FALSE)
JANUARY<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2013-01-23.csv',header=FALSE)
FRI12_13<-data.frame(JUNE,JULY,AUGUST,SEPTEMBER,OCTOBER,NOVEMBER,DECEMBER,JANUARY)
colnames(FRI12_13)<-c("JUNE","JULY","AUGUST","SEPTEMBER","OCTOBER","NOVEMBER","DECEMBER","JANUARY")
head(FRI12_13)

FRI12_13_time <-rowsum(FRI12_13,rep(1:24,each = 3600))
FRI12_13_time$time<-c("1 am","2 am","3 am","4 am","5 am","6 am","7 am","8 am","9 am","10 am","11 am","12 am","1 pm","2 pm","3 pm","4 pm","5 pm","6 pm","7 pm","8 pm","9 pm","10 pm","11 pm","12 pm")

#first get a regular day consumption image compares the average of that week 
JUNE1<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-27.csv',header=FALSE)
JUNE2<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-28.csv',header=FALSE)
JUNE3<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-29.csv',header=FALSE)
JUNE4<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-06-30.csv',header=FALSE)
JUNE5<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-01.csv',header=FALSE)
JUNE6<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-02.csv',header=FALSE)
JUNE7<-read.csv('D:/2021Fall/503visualization/eco/04_plugs/04/01/2012-07-03.csv',header=FALSE)
OneWeek<-data.frame(JUNE1,JUNE2,JUNE3,JUNE4,JUNE5,JUNE6,JUNE7)
colnames(OneWeek)<-c("Day1","Day2","Day3","Day4","Day5","Day6","Day7")
OneWeek$Average <- rowMeans(OneWeek)

#sum the consumption in hour and add label to each hour
Juneweek<-rowsum(OneWeek,rep(1:24,each = 3600))
Juneweek$time<-c("1 am","2 am","3 am","4 am","5 am","6 am","7 am","8 am","9 am","10 am","11 am","12 am","1 pm","2 pm","3 pm","4 pm","5 pm","6 pm","7 pm","8 pm","9 pm","10 pm","11 pm","12 pm")
head(Juneweek)

#plot the image of one day
fig <- plot_ly(FRI12_13_time,type = 'scatter', mode = 'lines')%>%
  add_trace(x = ~time, y = ~JUNE, name = 'JUNE')%>%
  layout(showlegend = T)
fig <- fig %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6', width = 1200
  )
fig
htmlwidgets::saveWidget(as_widget(fig), "OneDay.html")

#select one day in this week
#plot the image
fig2 <- plot_ly(Juneweek,type = 'scatter', mode = 'lines')%>%
  add_trace(x = ~time, y = ~Day4, name = 'Day4')%>%
  add_trace(x = ~time, y = ~Average, name = 'Average')%>%
  
  layout(title = 'One day electronic consumption compared to average of one week ',legend=list(title=list(text='Month')))

fig2 <- fig2 %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6', width = 1200
  )
fig2
#save image
htmlwidgets::saveWidget(as_widget(fig2), "OneDayinOneWeek.html")

#plot the image for each month
fig3 <- plot_ly(FRI12_13_time,type = 'scatter', mode = 'lines')%>%
  add_trace(x = ~time, y = ~JUNE, name = 'JUNE')%>%
  add_trace(x = ~time, y = ~JULY, name = 'JULY')%>%
  add_trace(x = ~time, y = ~AUGUST, name = 'AUGUST')%>%
  add_trace(x = ~time, y = ~SEPTEMBER, name = 'SEPTEMBER')%>%
  add_trace(x = ~time, y = ~OCTOBER, name = 'OCTOBER')%>%
  add_trace(x = ~time, y = ~NOVEMBER, name = 'NOVEMBER')%>%
  add_trace(x = ~time, y = ~DECEMBER, name = 'DECEMBER')%>%
  add_trace(x = ~time, y = ~JANUARY, name = 'JANUARY')%>%
  layout(title = 'Electronic consumption of fridge on the last day of each month',legend=list(title=list(text='Month')))

fig3 <- fig3 %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6', width = 1200
  )
fig3
htmlwidgets::saveWidget(as_widget(fig3), "LastDayinEachMonth.html")

#I think it can be also divided by seasons. Let's say June, July and August are summer; Sep, Oct, and Nov are Fall; Dec and Jan are winter.
head(FRI12_13_time)
Summer<-c("JUNE","JULY","AUGUST")
Fall<-c("SEPTEMBER","OCTOBER","NOVEMBER")
Winter<-c("DECEMBER","JANUARY")
FRI12_13_time1<-FRI12_13_time
FRI12_13_time1$Summer<-rowSums(FRI12_13_time[,Summer])/3
FRI12_13_time1$Fall<-rowSums(FRI12_13_time[,Fall])/3
FRI12_13_time1$Winter<-rowSums(FRI12_13_time[,Winter])/2
head(FRI12_13_time1)

#plot the image for three seasons
fig4 <- plot_ly(FRI12_13_time1,type = 'scatter', mode = 'lines')%>%
  add_trace(x = ~time, y = ~Summer, name = 'Summer')%>%
  add_trace(x = ~time, y = ~Fall, name = 'Fall')%>%
  add_trace(x = ~time, y = ~Winter, name = 'Winter')%>%
  layout(title = 'Average Electronic consumption of fridge on the last day of each three months',legend=list(title=list(text='Season')))

fig4 <- fig4 %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6', width = 1200
  )
fig4
htmlwidgets::saveWidget(as_widget(fig4), "Seasons.html")