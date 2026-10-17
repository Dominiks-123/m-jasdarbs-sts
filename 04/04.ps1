foreach ($service in get-ciminstance Win32_Service) {if ($service.StartMode -eq "Auto" -and $service.State -eq "Stopped") {write-output $service.Name, $($r+=1)}}
if ($r -eq 0) {write-output "0"}
