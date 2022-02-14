#!/bin/bash
search_user() {
        awk -F, '{ if ($1 == "serdar" && $4 == "TerminateInstances") print $0 }' event_history.csv > result.txt
        #sleep 2
        awk -F "\"\"" '{ print $8 }' result.txt > result.tmp && mv result.tmp result.txt
        }
search_user