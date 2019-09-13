#!/bin/bash
        while IFS= read -r file 
        do
            if  [ -f "$file" ] && rm -f "$file"; then
                echo $file "is a file";
            else 
                if [ -d "$dir" ] && rm -d "$dir"; then 
                    echo $dir "is a directory";
                else
                echo "I dont know what that is";
                fi
            fi
        done < "filenames.txt"