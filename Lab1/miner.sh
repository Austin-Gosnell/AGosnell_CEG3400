#!/bin/bash


echo "Starting this script"

wget http://www.gwicks.net/textlists/english3.zip
unzip english3.zip
mv english3.txt dictionary.txt
#gets the dictionary and renames it

for i in {1..194000}; do shuf -i 0000000000-9999999999 -n 1; done > nonces.txt
#gets the nonces

paste -d '' nonces.txt dictionary.txt > pre-hash.txt
#combines nonces with dictionary to get 194,000 combinations

while IFS= read -r line; do echo -n "$line" | sha256sum; done < pre-hash.txt > post-hash.txt
#takes pre-hash, hashes each line and puts it as its own line in post-hash.txt

paste -d '  ' pre-hash.txt post-hash.txt > combinations.txt
#combines the lists so you know what gave which hash

cat combinations.txt | grep " 0000"
#looks for four zeroes after a space


