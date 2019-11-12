#!/bin/bash
echo "Your Shopping list is as follows:"
awk 'BEGIN {
	FS=","
}
/^[aeiou]/{
	print "starts with a vowel:" $1 
}
/^[o]/{
	print "Starts with letter o:" $1 
}
/[0-9],[0-9]$/{
        print "Whole number Price:" $1
}
/[a-z] [a-z]/{
        printf "Has two or more Words:" $1
}
END { print "End of statement"}' /home/student/CSI6203/portfolio/week10/shopping.csv