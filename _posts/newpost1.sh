#!/bin/sh

# prompt user for parameters
read -e -p "Enter the date (YYYY-MM-DD): " DATE
echo "**************"
echo $DATE
echo "**************"

read -e -p "Enter the post long title: " TITLE
echo "**************"
echo $TITLE
echo "**************"

read -e -p "Enter the post short title: " SHORT 
SHORT="$(tr ' ' '-' <<<$SHORT)" # replaces spaces for hiphens
echo "**************"
echo $SHORT
echo "**************"

CATFILES=$(head -n 1 categories.txt)
echo "From categories:" $CATFILES
read -e -p "Enter the category: " CATS
echo "**************"
echo $CATS
echo "**************"

read -e -p "Enter the full text of post: " TEXT
echo "**************"
echo $TEXT
echo "**************"

NewFile=$DATE-$SHORT.md # output is DATE-FILENAME.md
(
# define the template.
cat  << EOF
---
layout: post
title: "$TITLE"
categories: $CATS
author: "Laura Rocha Prado"
---

$TEXT

EOF
) > $NewFile

echo "**************"
echo "Post has been created! Don't forget to push to origin."
echo "**************"
echo "Bye now."

# usage
# LINUX: newpost1.sh and follow instructions
# MAC: sh newpost1.sh and follow instructions
# WINDOWS: open Git Bash, cd to C:/path/to/repo/_posts/ 
# then run sh newpost1.sh and follow instructions