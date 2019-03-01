#!/usr/local/bin/bash
if
    test -x /bin/ls # testing if this is executable. 0 for success.
then
    if [ ! -w /etc/hosts ] # if we dont have write permissions.
    then
        if echo about to look for foobar
            grep -q foobar /etc/passwd  # grab foobar from /etc/passwd
        then
            echo foobar found in /etc/passwd
        else
            echo foodbar not found
        fi
    fi
else
    echo Oh no, /bin/ls is not executable
fi

