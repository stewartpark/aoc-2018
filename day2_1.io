#!/usr/bin/env io

in    := File open("in/day2.txt") readLines map(asList uniqueCount map(last) unique)
two   := in map(v, if(v contains(2), 1, 0)) sum
three := in map(v, if(v contains(3), 1, 0)) sum

(two * three) println