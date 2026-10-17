get-computerinfo | select-object CsName, OSName, OSBuildNumber, OSLocalDateTime
>> write-output " ","powershell version:$($Host.version)"
>> (get-process).count