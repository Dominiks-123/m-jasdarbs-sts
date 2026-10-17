$errors = Get-WinEvent -FilterHashtable @{LogName = 'System'
Level = 2
StartTime = (Get-Date).AddHours(-48)}
write-output "errors:$($errors.count)"
$errors | group-object message | sort-object Count -descending | Select-object -first 1 count, name