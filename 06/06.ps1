Get-CimInstance Win32_PnPSignedDriver |
Where-Object { $_.DriverProviderName -ne "Microsoft" } |
Select-Object DeviceName, DriverProviderName, DriverVersion |
Export-Csv -Path ".\downloads\Drivers.csv" -notypeinformation