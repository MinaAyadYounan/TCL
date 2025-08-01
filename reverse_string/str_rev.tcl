set str "intake45"
set str_list [split $str ""]
set str_length [llength $str_list] 
set rev_str ""
set character ""

for {set i $str_length} {$i >= 0 } {incr i -1} {
  set character [lindex $str_list $i]
  set rev_str "$rev_str$character"

}
puts $rev_str
