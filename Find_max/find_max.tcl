proc find_max  {A} {
    set element [lindex $A 0]
    for {set i 1} {$i < [llength $A]} {incr i 1} {
      if {$element < [lindex $A $i] } {
        set element [lindex $A $i];
      }
      
    }
  
  return $element
}


puts [find_max {1 2 5 3 7 5 4}]
