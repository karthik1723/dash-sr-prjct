from itertools import count
import sqlite3
from numpy import insert
import pandas as pd
from flask import Flask, request, flash,redirect,render_template, url_for,session,g

import os
conn=sqlite3.connect("dash.db")
cur=conn.cursor()
cat="Research Grants"
cur.execute("select file from data where category='"+cat+"'")
row=cur.fetchall()
for i in row:
    file_name=i[0]
def_path='static\excel_data_new'
final_path=os.path.join(def_path,file_name)
data=pd.read_excel(final_path)
df=pd.DataFrame(data)
#1st graph bar chart
dept_group=df.groupby('Department')['Sanctioned Project Amount'].sum()
dept_group=pd.DataFrame(dept_group)
dept_names=dept_group.index.to_list()
sanc_amount=dept_group['Sanctioned Project Amount'].to_list()
#3rd graph pie chart
status=df['Status'].value_counts().index.to_list()
status_count=df['Status'].value_counts().to_list()
#4th graph line graph
year_group=df.groupby('Year of Sanction')['Sanctioned Project Amount'].sum()
year_group=pd.DataFrame(year_group)
year=year_group.index.to_list()
sanc_amount_year=year_group['Sanctioned Project Amount'].to_list()

#5th graph horizontal bar chart
agency_group=df.groupby('Funding Agency')['Sanctioned Project Amount'].sum()
agency_group=pd.DataFrame(agency_group)
agency=agency_group.index.to_list()
sanc_amount_agency=agency_group['Sanctioned Project Amount'].to_list()


#dropdown
year_drop=df['Year of Sanction'].value_counts().index.to_list()
year_drop.sort(reverse=True)

dept=df['Department'].value_counts().index.to_list()
    
og=[]
for i in year_drop:
    D=df.loc[df['Year of Sanction']==i]
    d1=D['Department'].value_counts().index.tolist()
    og.append(d1)

alll=[]
alll.append("All Departments")
og.append(alll)
year_drop.append("All years")
yd= {year_drop[i-1]: i for i in range(1,len(year_drop)+1)}


print(yd,og)
# yd[len(year_drop)]="All years"
