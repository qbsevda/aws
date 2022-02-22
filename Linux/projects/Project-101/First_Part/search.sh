#!/bin/bash
​
echo -e "Bu script *nightfighter* AWS-DevOps Grubu tarafindan yapilmiştir.\n"
​
cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance"  | awk -F'"' '{print $16}' | cat >> serdar.txt
​
cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance"  | awk -F'"' '{print $32}' | cat >> serdar.txt
​
cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance"  | awk -F'"' '{print $48}' | cat >> serdar.txt
​
cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance"  | awk -F'"' '{print $64}' | cat >> serdar.txt
​
cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance"  | awk -F'"' '{print $80}' | cat >> serdar.txt
​
cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance"  | awk -F'"' '{print $96}' | cat >> serdar.txt
​
sort serdar.txt | uniq | tee serdar.txt