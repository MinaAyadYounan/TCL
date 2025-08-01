proc search_dup {a} {
    for {set i 0} {$i < [llength $a]} {incr i} {
        set current [lindex $a $i]
        set sublist [lrange $a [expr {$i + 1}] end]
        if {[lsearch  $sublist $current] != -1} {
            return $current
        }
    }
    return 0
}

puts [search_dup {A B C B}]

proc search_dup_2 {a} {
    for {set i 0} {$i < [llength $a]} {incr i 1} {
      set element [lindex $a $i]
    for {set j [expr $i + 1]} {$j < [llength $a]} {incr j 1} {
      set elej [lindex $a $j]
      if {[string equal $element $elej]} {
        return $element;
      }
      
    }      
}
  return 0;
}
puts "Method 2 :"
puts [search_dup_2 {A B C B}]
