for( $i = -100; $i -le 0; $i++ )
{
    $Date = (Get-Date).AddDays($i).Date
    $Name = (Get-Date $Date -Format "yyyyMMdd")+ ".log"
    New-Item $Name -ItemType File -Force
    Set-ItemProperty $Name -Name LastWriteTime -Value $Date
}