set file_read [open "report.txt" r]  ;
set F_write [open "writetext.txt" w]
set count 0;
while {[gets $file_read l] != -1} {
     if {[string match *setup* $l] || [string match *slack* $l]} {
        puts $F_write "$count: $l"
        incr count
    }
	
}
close $file_read  ;
close $F_write;

  
