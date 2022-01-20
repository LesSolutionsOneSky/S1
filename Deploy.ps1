$DirectoryToCreate = "C:\temp"

<# install Net Frame 4.8#>
$DownloadNET = "https://github.com/LesSolutionOneSky/Automate/raw/main/dotNetFx35setup.exe"
$SoftwareNETPath = "C:\Temp\Netframe.exe"
if (-not (Test-Path -LiteralPath $DirectoryToCreate)) {
    mkdir "C:\temp"
} Try {
    Write-Host "Downloading from: $($DownloadNET)"
    Write-Host "Downloading to:   $($SoftwareNETPath)"
        $WebClient = New-Object System.Net.WebClient
        $WebClient.DownloadFile($DownloadNET, $SoftwareNETPath)
    Write-Host "Download Complete"
$process = (Start-Process -FilePath $SoftwareNETPath -ArgumentList "/q /norestart" -Wait -Verb RunAs -PassThru)
Write-Host -Fore Red "Errorcode: " $process.ExitCode
} catch {
    Write-Host "Error in creating temp Folder! Error: " $process.ExitCode
    }
<# End of NetFrame Work Install #>

<# Install S1#>
$DownloadPath = "https://update.itsupport247.net/SentinelOne/SentinelOne_windows.exe"
$SoftwarePath = "C:\Temp\SentinelOne_windows.exe"


    Write-Host "Downloading from: $($DownloadPath)"
    Write-Host "Downloading to:   $($SoftwarePath)"
        $WebClient = New-Object System.Net.WebClient
        $WebClient.DownloadFile($DownloadPath, $SoftwarePath)
    Write-Host "Download Complete"

Start-Process -FilePath $SoftwarePath -ArgumentList "/SITE_TOKEN=$($args[0]) /quiet" -Wait -Verb RunAs -PassThru