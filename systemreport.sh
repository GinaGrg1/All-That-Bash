#!/bin/bash
freespace=$(df -h / | grep -E "\/$" | awk '{print $4}')
greentext="\033[32m"
bold="\033[1m"
endoftext="\033[0m"
logdate=$(date +"%Y%m%d")
logfile="$logdate"_report.log

echo -e $bold"Quick system report for "$greentext"$HOSTNAME"$endoftext
printf "\tSystem type:\t%s\n" $MACHTYPE
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Space:\t%s\n" $freespace
printf "\tFiles in directory:\t%s\n" $(ls | wc -l)
printf "\tGenerated on:\t%s\n" $(date +"%d/%m/%Y")
echo -e $greentext"A summary of this info has been save to $logfile"$endoftext

cat <<- EOF > $logfile
			This report was automatically generated by the Bash script.
			This contains a brief summary of the system.
EOF

# >> add this line to the end.
printf "SYS:\t%s\n" $MACHTYPE >> $logfile 
printf "BASH:\t%s\n" $BASH_VERSION >> $logfile