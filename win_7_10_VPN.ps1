########## Copy PreVPN file 
Write-Host "User: "$env:UserName
Write-Host " "
######### Узнаём где файл и где рабочий стол
$dest_path="C:\Users\"+$env:UserName+"\AppData\Roaming\Microsoft\Network\Connections\Pbk"
$rab=Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
$desktop=$rab.Desktop
Write-Host $desktop
Write-Host " "
######### Copy files
Copy-Item -Path "\\укажите путь source-path\rasphone.pbk" -Destination $dest_path
Copy-Item -Path "\\укажите путь source-path\TeamViewer_Setup.exe" -Destination $desktop
Write-Host "Copied TeamViewer_Setup.exe"
Write-Host " "
Write-Host " "
write-host "VPN --- Enter login and password, PreSharedKey L2TP"
[void][System.Console]::ReadKey($true)

######### Proxy OFF
 IF (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings")) 
 { 
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Force 
 } 
 New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyEnable -Value 0 -Force
 Write-Host "**************"
 Write-Host "Proxy OFF"
