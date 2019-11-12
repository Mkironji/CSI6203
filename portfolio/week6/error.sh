#!/bin/bash
#This function prints a given error
VAR1=$1
printError()
{
    echo -e "\033[31mERROR:\033[0m" $VAR1
}
printError