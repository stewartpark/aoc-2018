#!/usr/bin/env bash

yes "$(<in/day1.txt)" | awk '{ v += $0; cnt[v] += 1; if (cnt[v] == 2) { print v; exit 0; } }'
