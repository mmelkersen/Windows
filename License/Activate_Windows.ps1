<#
======================================================================================================
 
 Created on:    12.03.2021
 Created by:    Mattias Melkersen
 Version:       0.1  
 Mail:          mm@mindcore.dk
 twitter:       @mmelkersen
 Function:      Activating Windows from the built-in BIOS key. Can be used to downgrade OS

======================================================================================================

#>
Try
{
        #Activating device with Windows 10 KMS official key
        $key = "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
        Cscript.exe C:\Windows\System32\slmgr.vbs -ipk $key
        
        #Activating device from BIOS Serial
        $key = (get-wmiobject -class softwarelicensingservice).OA3xOriginalProductKey
        Cscript.exe C:\Windows\System32\slmgr.vbs -ipk $key
        
        exit 0        
}

catch
{
    $errMsg = $_.Exception.Message
    return $errMsg
    exit 1
}