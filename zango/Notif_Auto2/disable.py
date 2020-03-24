import os
import sys
import time
myCmd = 'ansible-playbook -l %s disable_custom_list_machine.yml --extra-vars "ansible_user=%s ansible_password=%s"' % (sys.argv[1],sys.argv[2],sys.argv[3])
os.system(myCmd)
time.sleep(1)
rollback1 = 'cp disable_custom_list_machine.yml_2019 disable_custom_list_machine.yml'
os.system(rollback1)
rollback2 = 'cp enable_custom_list_machine.yml_2019 enable_custom_list_machine.yml'
os.system(rollback2)
