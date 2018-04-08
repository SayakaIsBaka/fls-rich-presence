If WScript.Arguments.Length = 0 Then
msgbox "No program given.", 0, "Error"
End If

Set WshShell = WScript.CreateObject("WScript.Shell")
On Error Resume Next
WshShell.Exec WScript.Arguments(0)

If Err Then
    Set objShell = CreateObject("Shell.Application")
    objShell.ShellExecute WScript.Arguments(0), , ,"runas", 1
End If

WshShell.CurrentDirectory = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
WshShell.Run "node index.js", 0
Set WshShell = Nothing
