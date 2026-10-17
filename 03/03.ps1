foreach ($S in get-service) { if ($S.Status -eq "Running") {$r+=1} if ($S.Status -eq "Stopped") {$t+=1}}
write-output "$($r) running", "$($t) stopped", "$($r)+$($t)=$($r+$t)"
