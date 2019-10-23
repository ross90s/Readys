
import sys
import time

filename=['xyz','nyk']

for i1 in range(2):
    f1=open(filename[i1],'r')
    m=f1.read()
    f_back=open(filename[i1]+time.strftime("_%Y%m%d-%Hh%M"),'w')
    for i2 in f1:
        f_back.write(i2)
    
    n=len(m)
    for i4 in range(n):
        if m[i4:i4+3]=='are':
            m_new=m.replace('are','45455555')
            d2=open(filename[i1],'w')
            for i5 in m_new:
                d2.write(i5)




