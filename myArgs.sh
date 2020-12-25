#!/bin/bash
# Script name: myargs
# Date:
# Name:
# Script to test command line arguments

## If there’s no arguments, print message and exit the script ###
if [ $# == 0 ] ; then
   echo "Usage:  $(basename $0)  arg1 arg2 ... argn" \
   1>&2
   exit 1
fi

echo "The name of this script is $0 ."  	## $0 is current script name
echo "The arguments are $* "     	# $* print all arguments
echo "The first argument is $1"   	# $1 print the first argument
echo "The second argument is $2"	# $2 print the second argument
echo "The number of arguments is $#"   # $# print number of arguments

previous_args=$*			# save current arguments in previous_args
set niel khail nobo			# set new arguments
echo "All the positional parameters are $*"		# print new arguments
echo "The number of positional parameters is $#"	# print number of new arguments
echo $previous_args					# print previous arguments

set --		# -- means ‘don’t treat anything following this option. So all arguments are ignored
echo "Current args after -- are :  $*"    	# nothing printed
set $previous_args			# set arguments from previous_arg 
echo $*					# print all arguments
