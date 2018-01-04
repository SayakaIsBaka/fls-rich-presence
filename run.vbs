Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Exec WScript.Arguments(0)
WshShell.Run "node C:\Projects\fls-rich-presence\index.js", 0
Set WshShell = Nothing
