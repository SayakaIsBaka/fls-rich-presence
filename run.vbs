Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Exec WScript.Arguments(0)
WshShell.Run "node path/to/project/index.js", 0
Set WshShell = Nothing
