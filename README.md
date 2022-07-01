```powershell
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.


PS C:\Users\ZuuL> Write-Host "Introduction"
Introduction

PS C:\Users\ZuuL> # Out info
PS C:\Users\ZuuL> [string]$Title = "Veeam-Automation"
PS C:\Users\ZuuL> [string]$AboutSection = "about the contents of this repository "
PS C:\Users\ZuuL> [string]$Author = "@ZuuLAutomation"

PS C:\Users\ZuuL> Write-Host "Title of this Repository is: $Title `n`n"
Title of this Repository is: Veeam-Automation


PS C:\Users\ZuuL> $Output = "This This Readme.md file was made for the purpose of telling " + $AboutSection + "(" + $Title + ")"
PS C:\Users\ZuuL> $Output.Replace("+"," ")
This This Readme.md file was made for the purpose of telling about the contents of this repository (Veeam-Automation)

PS C:\Users\ZuuL> $FunctionalityFile = "
>> This readme.md is only to introduce You to this repository.
>> It will contain several scripts, primarily in the form of the PowerShell language.
>> 
>> The scripts introduced in the repository is by NO means made in collaboration with Veeam® Software. It's purely a passion project to automate the use of the Veeam 
>> Software products and for use at my daily work place.
>> This also means, that there is no official support for any scripts or other material found throughout this repository.
>>    - For licens agreements read the LICENSE provided in Veeam-Automation.
>>
>> With that being said. Enjoy the scripts and other material provided :-)
>> 
>> "
PS C:\Users\ZuuL> $FunctionalityFile | Out-File "C:\FunctionalityFile.txt"
PS C:\Users\ZuuL> Get-Content "C:\FunctionalityFile.txt"

"This readme.md is only to introduce You to this repository.
It will contain several scripts, primarily in the form of the PowerShell language.
 
The scripts introduced in the repository is by NO means made in collaboration with Veeam® Software. It's purely a passion project to automate the use of the Veeam 
Software products and for use at my daily work place.
This also means, that there is no official support for any scripts or other material found throughout this repository.
   - For licens agreements read the LICENSE provided in Veeam-Automation.

With that being said. Enjoy the scripts and other material provided :-)"


PS C:\Users\ZuuL> [int]$ViewCounter = 0
PS C:\Users\ZuuL> $GetViewers = Get-Content \\github.com\ZuuLAutomation\Veeam-Automation\Viewers.json
PS C:\Users\ZuuL> foreach ($NewViewer in $GetViewers) { $ViewCounter++ }
PS C:\Users\ZuuL> Write-Host "New total views: $ViewCounter `n"
New total views: 458

PS C:\Users\ZuuL> Write-Host "This will be all from this README. Until next time, goodbye! `n"
This will be all from this README. Until next time, goodbye!

PS C:\Users\ZuuL> Write-Host "Ending session..."; Start-Sleep -Seconds 2; Exit 1
Ending session...
```
