(get-process).count
foreach ($S in get-service) { if ($S.Status -eq "Running") {$r+=1} if ($S.Status -eq "Stopped") {$t+=1}} $($r+$t)
$errors=Get-WinEvent -FilterHashtable @{LogName = 'System'
Level = 2
StartTime = (Get-Date).AddHours(-48)}
$errors.count
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
ForEach-Object {$freeGB = [math]::round($_.FreeSpace / 1GB,1)
write-output $freeGB}

