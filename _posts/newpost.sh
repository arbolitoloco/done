#!/bin/sh

# define parameters which are passed in.
DATE=$1 # YYYY-MM-DD
TITLE=$2 # Title or "Long title"
CATS=$3 # category OR "category 1, category 2"
TEXT=$4 # "Full text of post"
SHORT=$1-$5 # short-title-hifenated

NewFile=$SHORT.md # output is DATE-FILENAME.md
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