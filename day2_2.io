#!/usr/bin/env io

compare := method(id1, id2, id1 map(i, v, if(id2 at(i) == v, 0, 1)) sum)
extract := method(id1, id2, id1 map(i, v, if(id2 at(i) == v, v, "")) join)
in      := File open("in/day2.txt") readLines
zipped  := in map(a, in map(b, list(a asList, b asList))) reduce(appendSeq)

zipped foreach(v,
 if(compare(v first, v last) == 1,
  extract(v first, v last) println
  System exit))