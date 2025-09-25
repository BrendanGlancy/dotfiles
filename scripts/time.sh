#!/bin/bash

CATEGORIES=(
    "WORK"
    "VIM"
    "WASTE"
    "STOP"
)

# we will try sk for this
selected=$(printf "%s\n" "${CATEGORIES[@]}" | sk --margin 10% --color="bw" --bind 'q:abort')
sk_status=$?
