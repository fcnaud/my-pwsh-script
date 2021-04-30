function CreateFile { New-Item $args -itemtype "file" }
function CreateDir { New-Item $args -itemtype "directory"}
function CreateLink
{
    Param($Path, $Target, [switch]$S, [switch]$D, [switch]$H, [switch]$J)

    if($S -or $D) {
        New-Item -ItemType SymbolicLink -Path $Path -Target $Target
    } elseif($H) {
        New-Item -ItemType HardLink -Path $Path -Target $Target
    } elseif($J) {
        New-Item -ItemType Junction -Path $Path -Target $Target
    }
}

function GetOnlineHelp() { Get-Help -online @args }
function CdCmdDirectory($cmdname) { (Get-Command $cmdname).path | Split-Path -parent | Set-Location }
function OpenCmdDirectory($cmdname) { (Get-Command $cmdname).path | Split-Path -parent | Invoke-Item }
function OpenGithub() { Start-Process www.github.com }
