#/bin/bash


divider========================================
divider=$divider$divider

header="\n %-25s %8s %15s %15s %-40s\n"
format=" %-25s %8d %15s %15s %-40s \n"

width=80

printf "$header" "ITEM NAME" "QUANTITY" "PRICE" "TOTAL" "COMMENT"

printf "%$width.${width}s\n" "$divider"

printf "$format" \
milk 1 '$2.56' '$2.56' 'Such a cheapstake!' \
eggs 12 '$0.49' '$5.88' 'Do you really need that many?' \
strawberries 3 '$2' '$6' 'That is a bit Expensive! Are you sure?' \
orangejuice 2 '$7.49' '$14.98' 'That is a bit Expensive! Are you sure?' \
butter 1 '$4.95' '$4.95' 'Good Purchase' \
pasta 1 '$3.12' '$3.12' 'Good Purchase' \
coffee 2 '$16' '$32' 'That is a bit Expensive! Are you sure?' \
