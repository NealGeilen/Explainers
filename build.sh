#!/bin/bash
search_dir=`cd explainers && ls *.md`
for entry in "$search_dir"
do
  name=${entry::${#entry}-3}
  echo "/explained/$name/"
  exec npx slidev build "explainers/$entry" --out "./../dist/$name" --base /
  echo "$entry"
done
