Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
ForEach-Object {$freeGB = [math]::round($_.FreeSpace / 1GB,1)
$sizeGB = [math]::round($_.Size / 1GB,1)
Write-Output "Drive: $($_.DeviceID) | Size: $sizeGB GB | Free space left: $freeGB GB"
if ($freeGB -lt 10) {Write-Warning "Get more disk space on $($_.DeviceID) $freeGB now!!!"}}