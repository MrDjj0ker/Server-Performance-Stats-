#!/bin/bash
stats=/usr/bin/top
$stats | grep -E --color=never "%Cpu|buff/cache"

df -h | awk '{print $1,$4,$5}' | column -t
top | ps -aux | awk '{print $1,$3,$4,$11}' | head -6
