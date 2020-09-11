import sys

print "first argument must be input, second must be outputfile"

inputFile = open(sys.argv[1], "r")
outputFile = open(sys.argv[2], "w")

allcmds = []
for lines in inputFile:
    if lines.startswith("#"):
        continue
    v = lines.split()
   # print v1[0]
    allcmds.append(v[0])
inputFile.close()
print "finished reading, begin writing"

for cmds in allcmds:
    outputFile.write(cmds + "\n")
outputFile.close()

