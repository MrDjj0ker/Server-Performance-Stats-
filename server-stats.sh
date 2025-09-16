#!/bin/bash
FILE=/root/users
echo "today is $(date)"
echo "I am going to add new users to system which is listed /root/users file"
while IFS= read -r line;do
        if grep -Fxq "$line" "/etc/passwd";then
                echo "User wasn't created because it already exists"
        else

                adduser $line
        fi

done < "$FILE"

