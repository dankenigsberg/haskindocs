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

![text](/haskindocs/assets/images/$postdate-content.jpg)

![addresses](/haskindocs/assets/images/$postdate-addresses.jpg)

## תרגום


## מקור
EOF
echo "$f"
