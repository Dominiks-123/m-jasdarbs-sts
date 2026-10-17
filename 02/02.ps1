get-process | sort-object WS | select-object -Last 10 ProcessName, ID, {[math]::Round($_.WS/1MB,1)}
get-process | get-member -name ws
