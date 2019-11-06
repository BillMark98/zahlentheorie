#!/bin/bash
# filename='./text.txt'
# writeFile='./data.txt'
# # for word in "$filename"
# # do
# #     echo "$word"
# # done

# while read line; do
#     for word in $line; do
#     	# echo "word has length ${#word}"
#     	len=${#word}
#     	if [ "$len" -gt 1 ]
#     	then
#     		echo " ${word:0:1} \\\\" >> "$writeFile"
#     	else 
#     		echo -n	 " $word &" >> "$writeFile"
#     	fi
        
#     done
# done < "$filename"


filename='./AicoM.txt'
writeFile='./dataM.txt'
# for word in "$filename"
# do
#     echo "$word"
# done
IFS=' '
while read line; do
    for word in $line; do
    	echo "word has length ${#word}"
    	len=${#word}
    	if [ "$len" -gt 1 ]
    	then
    		echo " ${word:0:1} "
    	else 
    		echo -n	 " $word &"
    	fi
        
    done
done < "$filename"