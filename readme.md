> 保存一些自己常用的 powershell 脚本

将项目 clone 到 profile 目录下，在需要 load 脚本的配置文件中使用类似如下的代码进行加载

``` powershell
# https://stackoverflow.com/a/146937
$profile_home = split-path $profile
$script_home = $profile_home + "/my-pwsh-script"
Get-ChildItem $script_home/*.ps1 | % { 
    . $_
    write-host "Loading library file:`t$($_.name)"
}
```


$profile 为配置文件，如果没有可以自行创建

```powershll
new-item -itemtype file -path $profile -force
```