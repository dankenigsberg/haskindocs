#!/bin/bash

if [ -z $1 ]; then
    echo provide post date
    exit 1
else
    postdate=$1
fi

f="_posts/$postdate-postcard.md"
cat <<EOF > $f
---
title: טרם תורגם - 
date: $postdate
categories:
  - letter
tags:
  - nehama
---

![text](/pupko-papers/assets/images/$postdate-content.jpg)

![addresses](/pupko-papers/assets/images/$postdate-addresses.jpg)

## תרגום


## מקור
EOF
echo "$f"
