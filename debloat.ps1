# Remove GameInputRedistService.exe
Get-AppxPackage *gamingservices* -allusers | remove-appxpackage -allusers