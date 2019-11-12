#!/bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
 FS=",";currency="$"; print "Item | Quantity | Price"
}
{
printf "%-10s| %d| %c%04.2f\n", $1, $2, currency, $3
}' shopping.csv