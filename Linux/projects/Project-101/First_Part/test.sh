#!/bin/bash
search_user() {
        #read -p "Enter the username to search : " user_name
        #read -p "Enter the file name to search the data : " fine_name

        # awk -F, '$1 == "serdar" { print $0 }' event_history.csv > results
        awk -F, '{ if ($1 == "serdar" && $4 == "TerminateInstances") print $0 }' event_history.csv > result.txt
        sleep 2
        awk -F "\"\"" '{ print $8 }' result.txt > result.tmp && mv result.tmp result.txt
        #awk -F "\"" '{ print $1 }' result1.csv > result1.txt
        }
search_user