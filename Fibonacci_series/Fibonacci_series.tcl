 proc Fibonacci_series {A} {
  set ele1 0;
  set ele2 1;
  set handOFF 0;
  set series  "$ele1 $ele2 "
 while {$ele2 <= $A} {
   set handOFF $ele2
   set ele2 [expr $ele1 + $ele2]
   set ele1 $handOFF
   if {$ele2 > $A} {
     break;
   }
   lappend series $ele2
 }
 return $series
   
 }
 puts [Fibonacci_series 8]
