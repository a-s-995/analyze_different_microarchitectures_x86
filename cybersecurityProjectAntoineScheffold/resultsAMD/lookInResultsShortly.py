import sys

resultsToAnalyze = open(sys.argv[1], "r")

allResults = []
for lines in resultsToAnalyze:
    allResults.append(lines)

i = 0
for currentResult in allResults:
   
    v = currentResult.split()
    if (v[1] != "SIGTRAP" ): #or v[1] == "SIGSEGV"
        print v
        break
print "hello world "
