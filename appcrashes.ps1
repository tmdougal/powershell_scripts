Get-WinEvent -FilterHashtable @{LogName='Application'; ID=1000} -MaxEvents 50
Read-Host