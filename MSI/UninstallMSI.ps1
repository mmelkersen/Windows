<#
======================================================================================================
 
 Created on:    09.04.2021
 Created by:    Mattias Melkersen
 Version:       0.1  
 Mail:          mm@mindcore.dk
 twitter:       @mmelkersen
 Function:      Uninstalling MSI package using GUID

======================================================================================================

#>

$Log = "CapaUninstall.log"

$Uninstall = @(
    "/x"
    "{206841D9-9318-413F-9A41-18EA5CD07A3D}"
    "/qb!"
    "REBOOT=ReallySuppress"
    "/norestart"
    "/l*v"
    '"C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\$Log"'
)

Start-Process "msiexec.exe" -ArgumentList $Uninstall -Wait -NoNewWindow