#!/bin/bash

rm -f index.html facts_numbered.md facts_copypasta.md

python number.py

echo "$(cat head.html)

$(markdown -f image -S facts_numbered.md)" > index.html

echo "$(cat head.html)

$(markdown -f image -S links.md)" > links.html

# remove <sup>, </sup>, <sub>, </sub> and write to facts_copypasta.md
sed 's/<sup>//g;s/<\/sup>//g;s/<sub>//g;s/<\/sub>//g' facts_numbered.md > facts_copypasta.md
