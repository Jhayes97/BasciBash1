#!/bin/bash

echo -e "Enter username:\n(Will be echoed)"
read username
echo Username:$username

function MatchPass()
{
echo -e "Enter Password:\n(Will not be echoed)"
read -s pass1
echo -e "Enter Password again:\n(Will not be echoed)"
read -s pass2
if [ "$pass1" == "$pass2" ]; then
        echo "Password confirmed"
        Passwd="$pass2"


else
        echo -e "Passwords did not match. Try again. \n"
        MatchPass
fi;
}
MatchPass
# echo "$Passwd"    # This is for debug purposes
        #There is now a variable named "$Passwd" and "$usrname" that can be used for setup
