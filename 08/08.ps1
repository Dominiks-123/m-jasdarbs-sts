$1=Measure-command {get-service -name spooler}
$2=Measure-command {get-ciminstance win32_service -filter "name='Spooler'"}
write-output "$($1.totalmilliseconds) ms","$($2.totalmilliseconds) ms"