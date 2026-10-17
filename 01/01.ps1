get-computerinfo | select-object CsName, OSName, OSBuildNumber, OSLocalDateTime
(get-process).count
write-output "$($Host.version)"