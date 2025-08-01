
proc factorial_1 {A} {
    set B 1
    if {$A == 0} {
       return 1
    }
    for {set i $A} {$i > 0} {incr i -1} {
        set B [expr {$B * $i}]
    }

    return $B
}
puts "Method 1 :"
puts [factorial_1 5]

proc factorial_rec {A} {
    if {$A <= 1} {
        return 1
    } else {
        return [expr {$A * [factorial_rec [expr {$A - 1}]]}]
    }
}
puts "Method 2 :"
puts [factorial_rec 5]
