function createFile { new-item $args -itemtype "file" }
function createDir { new-item $args -itemtype "directory"}
function manl() { man -online @args }
function cdcmd($cmdname) { (gcm $cmdname).path | split-path -parent | cd }
function ofcmd($cmdname) { (gcm $cmdname).path | split-path -parent | invoke-item }