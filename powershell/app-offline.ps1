#offline

$pathToApp = #'path to app'
$destPath = #'destination path'

if (Test-Path -Path $pathToApp) {
    Copy-Item -Path $pathToApp\app_offline.htm -Destination $destPath
} else {
    "Offline content does not exist"
}


--------------

#online

$pathToAppOffline = #'path-to-app'

if (Test-Path $pathToAppOffline -PathType leaf)
{
    Write-Host "Removing offline file now..."
    Remove-Item $pathToAppOffline
} else {
    Write-Host "Offline file does not exist..."
}