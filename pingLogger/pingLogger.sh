#!/bin/zsh

# Fixed variables
DateStamp=$(/bin/date '+%Y-%m-%d_%H%M%S')
IPAddress="$1"
PingInterval=10 # Seconds

# User Varaible
LogDir="$HOME/Downloads"
PingHours=1

## MAIN SCRIPT ##

# (Seconds per hour / Pings per second) x Number of hours
PingCount=$(( (3600/$PingInterval)*PingHours ))

LogFile="${LogDir}/PingLogger_${DateStamp}.log"

echo "Log: ${LogFile}"
echo "IP: ${IPAddress}"
echo "Count: ${PingCount}"

echo "" > "${LogFile}"

open "${LogFile}"

ping -i "${PingInterval}" -c "${PingCount}" --apple-time "${IPAddress}" >> "${LogFile}"

echo "Log file saved to ${LogFile}"
