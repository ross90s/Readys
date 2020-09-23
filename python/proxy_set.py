#Use of command:
#It is necessary to have 10 digit pswd as replace loop below is set to have 10 digits [i4:i4+10]
#So be sure that old and new paswd should have 10 digits before using this script  

#python proxy_set.py 'old_pswd' 'new_pswd'

import sys
import time
import os

#Below are th files that contain proxy settings
filename=['/etc/wgetrc','/etc/apt/apt.conf.d/apt.conf','/etc/environment']
#print (os.getcwd())

#Below is the for loop to get the backup of the existing files
for i1 in range(len(filename)):
    f1=open(filename[i1],'r')
    m=f1.read()
    back_file = filename[i1]+time.strftime("_%Y%m%d-%Hh%M")
    f_back=open(back_file,'w')
    for i2 in m:
        f_back.write(i2)

#below is loops helps to replace old pswd with new   
    n=len(m)
    appear=0
    for i4 in range(n):
        if m[i4:i4+10]==sys.argv[1]:
            appear+=1
            print('Found in',filename[i1],appear)
            m_new=m.replace(sys.argv[1],sys.argv[2])
            d2=open(filename[i1],'w')
            for i5 in m_new:
                d2.write(i5)

#Below command doesn't change env variable so manually change it
set_pro = 'export http_proxy=http://u157740:Daqwpmnb27@10.38.253.17:8080'
os.system(set_pro)
#mv_comm = 'mv wgetrc_* apt.conf_* environment_* backup/'
#os.system(mv_comm)
