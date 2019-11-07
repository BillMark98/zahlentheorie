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
IFS=',|\n|\t'
while read line; do
    for word in $line; do
    	echo "word has length ${#word}"
    	len=${#word}
    	if [ "$len" -gt 1 ]
    	then
            if [ "$len" -gt 2 ] 
            then
                echo -n "${word: -1} &" >> "$writeFile"
            else
    		      echo " ${word:0:1} \\\\ " >> "$writeFile"
            fi
    	else 
    		echo -n	 " $word &" >> "$writeFile"
    	fi
        
    done
done < "$filename"