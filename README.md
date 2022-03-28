# Handle2Files-sh
A shell script example that handles two files. Search the second file with keys in the first file, find a desired value, concatenate values from both files and print them together.

# Usage

file1:
```
10001,山
10002,川
10003,谷
10004,hoge
```

file2:
```
hogehoge,11
山駅,12
川駅,13
谷駅,14
川川駅,15
谷谷駅,16
```

Hit below in Terminal:
`sh ./Handle2Files.sh`

result:
```
idA,idB
10004,11
10001,12
10002,13
10003,14
```

# References
https://www.baeldung.com/linux/awk-multiple-input-files
https://stackoverflow.com/questions/17001849/awk-partly-string-match-if-column-word-partly-matches
https://unix.stackexchange.com/questions/183279/how-to-view-all-the-content-in-an-awk-array
https://stackoverflow.com/questions/26842504/printing-column-separated-by-comma-using-awk-command-line
https://www.thegeekstuff.com/2010/03/awk-arrays-explained-with-5-practical-examples/