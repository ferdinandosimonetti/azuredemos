param
(
    [Parameter(Mandatory=$false)]
    [object] $WebhookData
)

write-output "start"
write-output ("object type: {0}" -f $WebhookData.gettype())
write-output $WebhookData
write-output "`n`n"
write-output $WebhookData.WebhookName
write-output $WebhookData.RequestBody
write-output $WebhookData.RequestHeader
write-output "end"

if ($WebhookData.RequestBody) { 
    $names = (ConvertFrom-Json -InputObject $WebhookData.RequestBody)

        foreach ($x in $names)
        {
            $name = $x.Name
            Write-Output "Hello $name"
        }
}
else {
    Write-Output "Hello World!"
}