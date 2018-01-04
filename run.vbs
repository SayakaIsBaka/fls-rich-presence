Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Exec WScript.Arguments(0)
WshShell.CurrentDirectory = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
WshShell.Run "node index.js", 0
Set WshShell = Nothing
