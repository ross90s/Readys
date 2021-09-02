#Command to run 
(env_check) PS C:\Users\u157740\Desktop\django\check_list> python .\verify.py

#Changes to do
File 1 is the file in which we save 'check column'
File 2 is the file to compare with
sh is the sheet name of file 1
sh2 is the sheet name of file 2

#function for_ok() change column numbers
i is for loop that contain value of file 1 column 1
j is for loop that contain value of file 2 column to compare in our case it is 3


sh.cell(row=i,column=3).value here 3 is 'check column' to put ok if a=b

#function for_nok() change column numbers
Just change 'check column' number as above function

