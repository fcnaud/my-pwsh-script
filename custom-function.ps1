function createFile { New-Item $args -itemtype "file" }
function createDir { New-Item $args -itemtype "directory"}
function manl() { Get-Help -online @args }
function cdcmd($cmdname) { (Get-Command $cmdname).path | Split-Path -parent | Set-Location }
function ofcmd($cmdname) { (Get-Command $cmdname).path | Split-Path -parent | Invoke-Item }
function github() { Start-Process www.github.com }