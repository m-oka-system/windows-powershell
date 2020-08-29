$taskName = "DeleteFile"
Get-ScheduledTask | where taskpath -eq \ | where TaskName -eq $taskName | select *
(Get-ScheduledTask | where taskpath -eq \ | where TaskName -eq $taskName).Actions
(Get-ScheduledTask | where taskpath -eq \ | where TaskName -eq $taskName).Triggers
(Get-ScheduledTask | where taskpath -eq \ | where TaskName -eq $taskName).Settings