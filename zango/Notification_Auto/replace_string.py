#Change strings in multiple files 
import sys
import time

filename=['enable_custom_list_machine.yml','disable_custom_list_machine.yml']

### Backup 
for i1 in range(len(filename)):
    f1=open(filename[i1],'r')
    m=f1.read()
    f_back=open(filename[i1]+time.strftime("_%Y"),'w')
    for i2 in m:
        f_back.write(i2)
    
    n=len(m)
    for i4 in range(n):     
#Next statement checks 3 characters as we are searching for string 'are'
        if m[i4:i4+11]=='text_change':
            m_new=m.replace('text_change',sys.argv[1])
            d2=open(filename[i1],'w')
            for i5 in m_new:
                d2.write(i5)




