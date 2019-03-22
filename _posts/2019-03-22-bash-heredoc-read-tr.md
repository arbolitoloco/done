---
layout: post
title: "Learned bash heredoc 'read' and 'tr' commands and improved my script to create new posts"
categories: bash
author: "Laura Rocha Prado"
---

My original script to automate the generation of new posts for this blog was done through a single line cmd that was a little bit complicated, because I'd have to rely on memory to figure out the order of the commands. Realizing that I'd have to later translate this script into Windows and I could enter user inputs in that format, I figured I'd try to find something similar for Mac/Linux. So I came across these two commands that helped me achieve the results I wanted: 'read' will (with options '-e' and '-p') prompt the user for the variables I need (date, title, category, text), and 'tr' helps replacing spaces with hiphens to create a short title for the filename. The improved script can be found [here](https://github.com/arbolitoloco/done/blob/master/_posts/newpost1.sh).

