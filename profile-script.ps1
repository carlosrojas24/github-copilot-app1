# Is this Powershell session running as an administrator?
$admin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if ($admin) {
    # Yes, this session is running as an administrator
    $Host.UI.RawUI.WindowTitle = "Administrator: " + $Host.UI.RawUI.WindowTitle
} else {
    # No, this session is not running as an administrator
    $Host.UI.RawUI.WindowTitle = "User: " + $Host.UI.RawUI.WindowTitle
}



# Path: profile-script.ps1

# Set the prompt to include the current directory
function prompt {
    $p = "PS " + $(Get-Location) + "> "
    Write-Host $p -NoNewline
    return " "
}

# Set the title of the window to the current directory

function prompt {
    $Host.UI.RawUI.WindowTitle = $(Get-Location)
    $p = "PS " + $(Get-Location) + "> "
    Write-Host $p -NoNewline
    return " "
}