#!/usr/local/bin/bash
echo -n "Print message? "
valid=0
while
[ $valid == 0 ]
do
    read ans
    case $ans in
        yes|YES|y|Y) echo -n "And your message is? "
                     read msg
		     echo "You said $msg"
                     valid=1;;
           [nN][oO]) echo Not printing the message
                      valid=1;;
                  *) echo Maybe yes maybe no;;
    esac
done

# if answer is yes|YES|y|Y then ask what the message is & print that msg.
