$package = $args[0]
Get-ChildItem ($env:LOCALAPPDATA + "\Programs\Python\") | select FullName | 
Foreach-Object {
   $python = $_.FullName + '\python.exe'
   $cmd = "$python -m pip install -U --no-warn-script-location pip wheel setuptools"
   $pip = $_.FullName + '\Scripts\pip.exe'
   iex $cmd
   $cmd = "$pip wheel $package -w dist/"
   Write-Output $cmd
   iex $cmd
}
