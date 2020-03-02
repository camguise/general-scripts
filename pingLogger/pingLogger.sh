#!/bin/bash

IPAddress="$1"
LogFile="$HOME/Downloads/PingMonitor.log"
PingInterval="10" # Seconds
PingCount="2"

echo "" > "${LogFile}"

open "${LogFile}"

ping -i "${PingInterval}" -c "${PingCount}" --apple-time "${IPAddress}" >> "${LogFile}"