# # Variables
$taskName = "DeleteFile"
$psFile = "C:\OneDrive\DS218j\cloud\azure\windows-powershell\Remove-Item-specified-number-of-days.ps1"
$excute = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$action = New-ScheduledTaskAction -Execute $excute -Argument "-Command $psFile"
$trigger = New-ScheduledTaskTrigger -DaysInterval 1 -Daily -At "3:00 AM"

# Create task scheduler
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger

# Show
Get-ScheduledTask -TaskName $taskName

# Start / Stop
Start-ScheduledTask -TaskName $taskName
Stop-ScheduledTask -TaskName $taskName

# Disable / Enable
Disable-ScheduledTask -TaskName $taskName
Enable-ScheduledTask -TaskName $taskName

# Delete
Unregister-ScheduledTask -TaskName $taskName -AsJob
