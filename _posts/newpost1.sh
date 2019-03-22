#!/bin/sh

# prompt user for parameters
read -e -p "Enter the date (YYYY-MM-DD): " DATE
echo $DATE

read -e -p "Enter the post long title: " TITLE
echo $TITLE

read -e -p "Enter the post short title: " SHORT 
SHORT="$(tr ' ' '-' <<<$SHORT)" # replaces spaces for hiphens
echo $SHORT

read -e -p "Enter the category: " CATS
echo $CATS

read -e -p "Enter the full text of post: " TEXT
echo $TEXT

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

# usage
# LINUX: newpost.sh "This is a post" category "This is the content of the post" a-short-title
# MAC: sh newpost.sh "This is a post" category "This is the content of the post" a-short-title