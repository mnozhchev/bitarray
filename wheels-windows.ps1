Get-ChildItem ($env:LOCALAPPDATA + "\Programs\Python\") | select FullName | 
Foreach-Object {
    $python = $_.FullName + '\python.exe'
    $cmd = "$python setup.py bdist_wheel"
    Write-Output $cmd
    iex $cmd
}