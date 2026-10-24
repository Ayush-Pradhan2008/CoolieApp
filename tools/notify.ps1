param(
  [Parameter(Mandatory = $true)][string]$Title,
  [Parameter(Mandatory = $true)][string]$Message
)
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$ni = New-Object System.Windows.Forms.NotifyIcon
$ni.Icon = [System.Drawing.SystemIcons]::Information
$ni.Visible = $true
$ni.ShowBalloonTip(6000, $Title, $Message, [System.Windows.Forms.ToolTipIcon]::Info)
Start-Sleep -Seconds 7
$ni.Dispose()
