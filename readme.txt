S1

The following are the instruction to deploy S1 Agent on Workstations and servers;
these are both Powershell functions calling the script from this repository

Screenconnect Deployment
=================

#!ps 
#timeout=900000 
#maxlength=9000000 
$scriptPath = ((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/LesSolutionsOneSky/S1/main/Deploy.ps1'))
Invoke-Command -ScriptBlock ([scriptblock]::Create($scriptPath)) -ArgumentList "ReplaceWithSiteToken"




PowerShell Deployement
=================

$scriptPath = ((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/LesSolutionsOneSky/S1/main/Deploy.ps1'))
Invoke-Command -ScriptBlock ([scriptblock]::Create($scriptPath)) -ArgumentList "ReplaceWithSiteToken"
