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
