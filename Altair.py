#import packages
import pandas as pd
import numpy as np
import altair as alt


#read the data from 3 households.
weeklyfri4=pd.read_csv("D:/2021Fall/503visualization/eco/FridgeWeeklyfor4.csv")
weeklyfri56=pd.read_csv("D:/2021Fall/503visualization/eco/FridgeWeeklyfor56.csv")
weeklyent4=pd.read_csv("D:/2021Fall/503visualization/eco/EntWeeklyfor4.csv")
weeklyent56=pd.read_csv("D:/2021Fall/503visualization/eco/EntWeeklyfor56.csv")

weeklyfrifor3=weeklyfri4.append(weeklyfri56, ignore_index=True)
weeklyentfor3=weeklyent4.append(weeklyent56, ignore_index=True)

#Use Altair to plot interactive images for three households
#This is the area image of Fridge usage
#y is the cumulative consumption during 1 hour, and x indicates the time. Areas
#are separatered by the ID of households.

area_fri = alt.Chart(weeklyfrifor3,title = "Weekly Fridge Electronic Consumption for each household").mark_area().encode(
    x="time",
    y="Total",
    color = "ID"
).interactive()
area_fri

#This is the area image of entertainment usage
#y is the cumulative consumption during 1 hour, and x indicates the time
#are separatered by the ID of households.

area_ent = alt.Chart(weeklyentfor3,title = "Weekly Entertainment Electronic Consumption for each household").mark_area().encode(
    x="time",
    y="Total",
    color = "ID"
).interactive()
area_ent

#We can also find an interesting plot of Trellis area for entertainment consumption
#the axis are the same as previous ones

TrellisA = alt.Chart(weeklyentfor3,title = "Weekly Entertainment Electronic Consumption for each household").transform_filter(
    alt.datum.symbol != 'GOOG'
).mark_area().encode(
    x='time',
    y='Total',
    color='ID',
    row=alt.Row('ID', sort=['Household 4','Household 5','Household 6'])
).properties(height=50, width=400).interactive()
TrellisA

# I want to find when does each household overuses the electronic so I set a rule
# which refers to the horizontal line with the same color as each curve representing
# the average consumption for each hour during that week.
base = alt.Chart(weeklyentfor3,title = "Weekly Entertainment Electronic Consumption for each household").properties(width=550)

line = base.mark_line().encode(
    x='time',
    y='Total',
    color='ID'
)

rule = base.mark_rule().encode(
    y='average(Total)',
    color='ID',
    size=alt.value(2)
)

ruled_lines_ent = (line + rule).interactive()
ruled_lines_ent

#The same goal is for the next image, which I want to get the Fridge consumption information
base = alt.Chart(weeklyfrifor3,title = "Weekly Fridge Electronic Consumption for each household").properties(width=550)

line = base.mark_line().encode(
    x='time',
    y='Total',
    color='ID'
)

rule = base.mark_rule().encode(
    y='average(Total)',
    color='ID',
    size=alt.value(2)
)

ruled_lines_fri = (line + rule).interactive()
ruled_lines_fri

#Save all plots
ruled_lines_fri.save("D:/2021Fall/503visualization/eco/ruledForlinesfri.html")
ruled_lines_ent.save("D:/2021Fall/503visualization/eco/ruledForlinesent.html")
area_ent.save("D:/2021Fall/503visualization/eco/area_ent.html")
area_fri.save("D:/2021Fall/503visualization/eco/area_fri.html")
TrellisA.save("D:/2021Fall/503visualization/eco/TrellisAEnt.html")
