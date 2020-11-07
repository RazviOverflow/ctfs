import zipfile, sys
 
filename = sys.argv[1] 
dictionary = sys.argv[2]
 
password = None 
file_to_open = zipfile.ZipFile(filename) 
with open(dictionary, 'r') as f: 
   for line in f.readlines(): 
         password = line.strip('\n') 
         print "Trying " + password
         try: 
               file_to_open.extractall(pwd=password) 
               password = 'Password found: %s' % password 
               print password 
               break
         except: 
               pass 