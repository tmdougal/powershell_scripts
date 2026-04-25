#Disable Game Input Redist.
#Game Input Redist is used for xbox games. You don't need it if you don't play xbox games.
#Certain downloads may re-enable it. Causes issues in other games and has been crashing
#frequently for many users since at least 2020. If you don't need it is highly recommended
#to stop and disable it.
Stop-Service -Name "GameInputRedistService" -PassThru | Set-Service -StartupType Disabled

#Disable Bluetooth services
Stop-Service -Name "bthserv" -PassThru | Set-Service -StartupType Disabled

#Disable Print Spooler
#Used for printers.
Stop-Service -Name "Spooler" -PassThru | Set-Service -StartupType Disabled

#Disable IP Helper
#Provides tunnel connectivity using IPv6 transition technologies (6to4, ISATAP, Port Proxy, and Teredo),
#and IP-HTTPS. 
Stop-Service -Name "iphlpsvc" -PassThru | Set-Service -StartupType Disabled

#Disable Connected User Experiences and Telemetry, and diagonsitcs.
#This one just sucks. Bogs your system down so Microsoft can do nothing with your data. Some automated
#troubleshooting will stop working, but personal experience says they never worked anyway.
Stop-Service -Name "DiagTrack" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "diagsvc" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "DPS" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "WdiServiceHost" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "WdiSystemHost" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "WerSvc" -PassThru | Set-Service -StartupType Disabled

#Disable Geolocation Service Properties
#This service monitors the current location of the system and manages geofences (a geographical location with
#associated events). Personal computer probably doesn't need it.
Stop-Service -Name "lfsvc" -PassThru | Set-Service -StartupType Disabled

#Disable Netlogon
#This service maintains a secure channel between this computer and the domain controller for authenticating
#users and services. Personal computer probably doesn't need it.
Stop-Service -Name "lfsvc" -PassThru | Set-Service -StartupType Disabled

#Disable Parental controls.
Stop-Service -Name "WpcMonSvc" -PassThru | Set-Service -StartupType Disabled

#Disable Phone Service
Stop-Service -Name "PhoneSvc" -PassThru | Set-Service -StartupType Disabled

#Program Compat Service Maybe?

#Disable Smart Card Services
Stop-Service -Name "SCardSvr" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "ScDeviceEnum" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "SCPolicySvc" -PassThru | Set-Service -StartupType Disabled

#Disable Windows Biometric Service
Stop-Service -Name "WbioSrvc" -PassThru | Set-Service -StartupType Disabled

#Disable Windows Mobile Hotspot
Stop-Service -Name "icssvc" -PassThru | Set-Service -StartupType Disabled

#Disable X-Box Services
Stop-Service -Name "XboxGipSvc" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "XblAuthManager" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "XblGameSave" -PassThru | Set-Service -StartupType Disabled
Stop-Service -Name "XboxNetApiSvc" -PassThru | Set-Service -StartupType Disabled
