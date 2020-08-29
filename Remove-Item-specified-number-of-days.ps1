$DIRECTORY = "C:\azure\work"
$DAYS = 8
Get-ChildItem $DIRECTORY -Recurse | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-1 * $DAYS) } | Remove-Item -Recurse -force