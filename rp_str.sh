#!/bin/bash
cnt=$2
while IFS='' read -r line || [[ -n "$line" ]]; do
    #echo "Text read from file: $line"
	tmp1=$line
 	tmp2="<s> "$tmp1" </s> ""("$cnt")"
	cnt=$[$cnt+1]
	echo $tmp2 >> test.txt
done < "$1"

#### USAGE : 	arg1 = source_file_name
####	 	arg2 = the first count number  

#### EXAMPLE : 
# ~/tmp$ cat data.txt
# nguyen
# minh
# chanh
# ~/tmp$ ./rp_str.sh data.txt 3000
# <s> nguyen </s> (3000)
# <s> minh </s> (3001)
# <s> chanh </s> (3002)
#
#
