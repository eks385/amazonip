#!/bin/bash
curl -s https://ip-ranges.amazonaws.com/ip-ranges.json | jq -r '.prefixes | .[].ip_prefix' > /config/user-data/amazonip.txt
sed h /config/user-data/amazonip.txt /config/user-data/WhiteList.txt > /config/user-data/LocalWhiteList.txt
