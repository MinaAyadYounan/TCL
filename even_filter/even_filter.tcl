proc even_filter {A} {
  foreach ele $A {
    if {[expr $ele%2] == 0} {
      lappend list_even $ele;
    }
  } 
  return $list_even
}
puts [even_filter {2 5 6 7 4 6 10 16}]
