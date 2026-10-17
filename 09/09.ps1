foreach ($process in Get-CimInstance Win32_Process) {
if ($process.Handle -ne $null) {$owner = Invoke-CimMethod -InputObject $process -MethodName GetOwner
if ($owner.User) {Write-Output "Process: $($process.Name)|User:$($owner.User)"}}}