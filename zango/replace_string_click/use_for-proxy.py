#Change strings in multiple files 
import sys
import time

filename=['xyz','nyk']

#####Take backup of original file

for i1 in range(2):
    f1=open(filename[i1],'r')
    m=f1.read()
    f_back=open(filename[i1]+time.strftime("_%Y%m%d-%Hh%M"),'w')
    for i2 in m:
        f_back.write(i2)
    
    n=len(m)
    for i4 in range(n):     
#Next statement checks 3 characters as we are searching for string 'are'
        if m[i4:i4+3]=='are':
            m_new=m.replace('are',sys.argv[1])
            d2=open(filename[i1],'w')
            for i5 in m_new:
                d2.write(i5)




