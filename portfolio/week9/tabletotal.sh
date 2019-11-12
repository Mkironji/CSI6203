#/bin/bash


divider========================================
divider=$divider$divider

header="\n %-25s %8s %10s %10s \n"
format=" %-25s %8d %10s %10s \n"

width=60

printf "$header" "ITEM NAME" "QUANTITY" "PRICE" "TOTAL"

printf "%$width.${width}s\n" "$divider"

printf "$format" \
milk 1 '$2.56' '$2.56' \
eggs 12 '$0.49' '$5.88' \
strawberries 3 '$2' '$6' \
orangejuice 2 '$7.49' '$14.98' \
butter 1 '$4.95' '$4.95' \
pasta 1 '$3.12' '$3.12' \
coffee 2 '$16' '$32' \
