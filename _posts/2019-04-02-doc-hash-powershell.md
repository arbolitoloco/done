---
layout: post
title: "Learned how to get a document hash on Windows PowerShell"
categories: bash
author: "Laura Rocha Prado"
---

A friend asked me to verify if a digitally signed PDF he was sending me via email would maintain its characteristics (he was having some issues on his server), so he asked if I could check the file hash (MD5). I found out that I could do it easily on Windows PowerShell with the following command: 

		`Get-FileHash C:pathtofile.iso -Algorithm MD5`

Standard algorithm is SHA256. Really cool stuff.

