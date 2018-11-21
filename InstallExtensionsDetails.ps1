﻿Set-ExecutionPolicy RemoteSigned
Import-Module 'C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\Microsoft.Dynamics.Nav.Apps.Management.psd1'
#Import-Module 'C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\Microsoft.Dynamics.Nav.Apps.Tools.psd1'
Get-Command *NAV*
c:
cd \temp
Publish-NAVApp -ServerInstance DynamicsNAV110 -Path ".\Peik Bech-Andersen_Extension Details_1.0.0.0.app" -SkipVerification
install-NAVApp -ServerInstance DynamicsNAV110 -Name "Extension Details" –Version 1.0.0.0 