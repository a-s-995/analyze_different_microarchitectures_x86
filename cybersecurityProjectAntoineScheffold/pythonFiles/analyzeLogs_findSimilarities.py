#shoul take 2 files as input, output all instructions that are present in both files (schnitt)
#

import sys
import os


print "first LogFile must be AMD, second Intel"
if len(sys.argv) != 3:
    exit(0)

logAMD =  sys.argv[1]
logIntel = sys.argv[2]
allCmdAMD = set()
allCmdIntel = set()

index = 0
print "reading first logfile"
fileAMD = open(logAMD, "r")
for lines1 in fileAMD:
    allCmdAMD.add(lines1)
    index += 1
lenthAMD = index
fileAMD.close()
print index
print "finished reading first log file, begin reading second"


index = 0
fileIntel = open(logIntel, "r")
for lines2 in fileIntel:
    allCmdIntel.add(lines2)
    index += 1
lenthIntel = index
fileIntel.close()
print "finished reading second log file"





similarCmds = set()
differentCmdsIntel = set()
differentCmdsAMD = set()

index = 0
for cmd in allCmdAMD:
    if cmd in allCmdIntel:
        similarCmds.add(cmd)
    else:
        differentCmdsAMD.add(cmd)
    index += 1
    if index % 10000 == 0:
        print index / 10000

print "finish"


for cmd in allCmdIntel:
    if cmd not in similarCmds:
        differentCmdsIntel.add(cmd)

print "done"
print "writing now"

f3 = open("./cmdsNOPREFIXboth", "w")
f4 = open("./cmdsNOPREFIXjustIntel", "w")
f5 = open("./cmdsNOPREFIXjustAMD", "w")

simil =[]
for i in similarCmds:
    simil.append(i)
simil.sort()
for i in simil:
    f3.write(i)
f3.close()

diffIntel = []
for i in differentCmdsIntel:
    diffIntel.append(i)
diffIntel.sort()
for i in diffIntel:
    f4.write(i)
f4.close()

diffAMD = []
for i in differentCmdsAMD:
    diffAMD.append(i)
diffAMD.sort()
for i in diffAMD:
    f5.write(i)
f4.close()

