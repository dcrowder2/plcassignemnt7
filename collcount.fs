\ collcount.fs
\ Dakota Crowder
\ CSCE A331 Spring 2018
\ Assignment 7, Exercise B

\ Runs the collatz, when 1 is reached, it is set as -1, so the count can be
\ correctly counted
: Collatz ( n -- c )
  dup 1 = if
  2 -
  else
  dup 2 mod
  0= if
  2 /
  else
  3 * 1 +
  then
  then ;

\ Recursively goes through the collatz function to reach 1, which is transformed
\ into -1, then all the calls to the collatz function are counted up
: Collatz-Length ( n -- c )
  dup -1 = invert if
  Collatz recurse 1 +
  then ;

\ Wrapper class for the Collatz-Length fucntion
: collcount ( n -- c)
  Collatz-Length ;
