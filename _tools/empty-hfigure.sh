#!/bin/bash

if [ -z $1 ]; then
    echo provide post date
    exit 1
else
    name=$1
fi

out=_posts/$name.md
date=$(echo $name|sed 's/\([0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]\)-.*/\1/')
cat <<EOF > $out
---
title: טרם תומלל - 
date: $date
categories:
  - doc
tags:
  - needtrans
---

<figure class="half">
    <a  href="/haskindocs/assets/images/$name-1.jpg">
    <img src="/haskindocs/assets/images/$name-1.jpg"></a>
    <a  href="/haskindocs/assets/images/$name-2.jpg">
    <img src="/haskindocs/assets/images/$name-2.jpg"></a>
</figure>

EOF
echo "$out"
