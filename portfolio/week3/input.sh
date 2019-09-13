#!/bin/bash
test_valid_arguments() { #functions to check if entry is more that not equal to three
 if test "$#" -ne 3; then
   echo "illegal number of parameters";
   exit 1
 fi
}
validate_data() {
  if [ -f "$1" ] || [ -f "$2" ] || [ -f "$3" ] ; then #function to compare the files
    echo "These are files";
    date -r "$1" "+%m-%d-%Y %H:%M:%S" #check files for time and date
  else
    echo "These are not files";
    exit 1
  fi
}
showNewestFile() {
  ls -t1 "$1" "$2" "$3" |  head -n 1
}

# Main body of script starts here
echo "Start of script..."
test_valid_arguments $1 $2 $3
validate_data  $1 $2 $3
showNewestFile $1 $2 $3
echo "End of script..."