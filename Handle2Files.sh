#!/bin/sh

awk -F',' 'BEGIN {
    print "idA,idB"
}

NR==FNR {
    # read lines from the first file
    idA[NR]=$1;
    name[NR]=$2;
    next
}

{
    # process the lines from the second file
    for (key in name) { 
        if (index($1, name[key]) != 0) {  
            print idA[key] "," $2;
            # make sure a key that is used once to be deleted
            delete name[key];
            # go to the next element in for-loop
            next;
        } 
    }
}'  file1 file2