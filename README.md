# S1





ScreenConnect:

#!ps 
#timeout=900000 
#maxlength=9000000 
$scriptPath = ((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/LesSolutionsOneSky/S1/main/Deploy.ps1'))
Invoke-Command -ScriptBlock ([scriptblock]::Create($scriptPath)) -ArgumentList "ReplaceWithSiteToken"



PowerShell:

$scriptPath = ((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/LesSolutionsOneSky/S1/main/Deploy.ps1'))
Invoke-Command -ScriptBlock ([scriptblock]::Create($scriptPath)) -ArgumentList "ReplaceWithSiteToken"
