function CreateFile { New-Item $args -itemtype "file" }
function CreateDir { New-Item $args -itemtype "directory"}
function GetOnlineHelp() { Get-Help -online @args }
function CdCmdDirectory($cmdname) { (Get-Command $cmdname).path | Split-Path -parent | Set-Location }
function OpenCmdDirectory($cmdname) { (Get-Command $cmdname).path | Split-Path -parent | Invoke-Item }
function OpenGithub() { Start-Process www.github.com }
