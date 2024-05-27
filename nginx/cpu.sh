#!/bin/bash

html_file="/var/www/html/cpu.html"

while true; do
    cpuProc=$(top -bn1 | grep "Cpu" | awk '{print $2 + $4}')

    sed -i 's/<p id="cpuLoad">[^<]*<\/p>/<p id="cpuLoad">'"${cpuProc}"'<\/p>/' "${html_file}"

    sleep 5
done
