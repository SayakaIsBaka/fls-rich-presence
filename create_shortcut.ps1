$WshShell = New-Object -comObject WScript.Shell

try {
    $FLPath = (Get-ItemProperty -Path HKLM:\SOFTWARE\Image-Line\Shared\Paths -Name "FL Studio")."FL Studio"
    $FLSharedDir = (Get-ItemProperty -Path HKLM:\SOFTWARE\Image-Line\Shared\Paths -Name "DSP_IPP")."DSP_IPP"
}
catch {
    "Error while parsing FL's directory! Is it installed?"
    Break
}

try {
    $Shortcut32 = $WshShell.CreateShortcut("$Home\Desktop\FL Studio 12 (Rich Presence).lnk")
    $Shortcut32.TargetPath = "`"$(get-location)\run.vbs`""
    $Shortcut32.Arguments = "`"$($FLPath)`""
    $Shortcut32.IconLocation = "$($FLPath), 0"
    $Shortcut32.WorkingDirectory = $FLSharedDir
    $Shortcut32.Save()
    "Successfully created 32bit shortcut!"
}
catch {
    throw "Error while creating 32bit shortcut!"
}

try {
    $Shortcut64 = $WshShell.CreateShortcut("$Home\Desktop\FL Studio 12 (64bit + Rich Presence).lnk")
    $Shortcut64.TargetPath = "`"$(get-location)\run.vbs`""
    $FLPath64 = $FLPath -replace 'FL.exe$', 'FL64.exe'
    $Shortcut64.Arguments = "`"$($FLPath64)`""
    $Shortcut64.IconLocation = "$($FLPath64), 0"
    $Shortcut64.WorkingDirectory = $FLSharedDir
    $Shortcut64.Save()
    "Successfully created 64bit shortcut!"
}
catch {
    throw "Error while creating 64bit shortcut!"
}


"Press any key to exit..."
[void][System.Console]::ReadKey($true)
