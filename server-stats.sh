#!/bin/bash
RED='\e[31m'
NC='\e[0m'
echo -e "${RED}Memory and CPU usage:${NC}"

top | grep -E --color=never "%Cpu|buff/cache"
for i in {1..77};do
	echo -n "-"
done
echo
sleep 0.1
echo -e "${RED}Disk usage${NC}"
echo 
df -h | awk '{print $1,$4,$5}' | column -t
for i in {1..77};do
	echo -n "-"
done
echo

echo -e "${RED}Top 5 processes by CPU and Memory usage${NC}"
echo
top | ps -aux | awk '{print $1,$3,$4,$11}' | head -6


