Set-ExecutionPolicy Bypass -Force CurrentUser
Clear-Host

function DiskInfo {
    Get-CimInstance Win32_LogicalDisk | Select-Object `
        @{Name="Samlet størrelse (GB)";Expression={[math]::Round($_.size/1gb)}}, 
        @{Name="Fri plads (GB)";Expression={[math]::Round($_.freespace/1gb)}}, 
        @{Name="Fri plads (%)";Expression={"{0:P0}" -f (($_.freespace/1gb) / ($_.size/1gb))}},
        @{Name="Disk bogstav";Expression={$_.DeviceID}},
        DriveType | Where-Object DriveType -EQ '3' | Format-List -Property "Samlet størrelse (GB)","Fri plads (GB)","Fri plads (%)","Disk bogstav"
}

function OSInfo {
     $GetInfo = Get-ComputerInfo -Property "OS*"
     
     if ($GetInfo.OsName -like "*2012*") {
        Write-Host "BEMÆRK! OS ER SERVER 2012 ELLER 2012 R2" -ForegroundColor Red
        Start-Sleep 1
     }

     Write-Host "OS                  :" $GetInfo.OsName
     Write-Host "Build               :" $GetInfo.OsBuildNumber
     Write-Host "Version             :" $GetInfo.OsVersion
     Write-Host "Installations dato  :" $GetInfo.OsInstallDate
}

DiskInfo
OSInfo

Set-ExecutionPolicy Restricted -Force CurrentUser