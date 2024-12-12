# Define the process name and location
$processName = "notepad"
$processPath = "C:\Windows\System32\notepad.exe"

# Kill the process if it is running
$process = Get-Process -Name $processName -ErrorAction SilentlyContinue
if ($process) {
    Stop-Process -Name $processName -Force
    Write-Output "Process $processName has been stopped."
} else {
    Write-Output "Process $processName is not running."
}

# Start the process
Start-Process -FilePath $processPath
Write-Output "Process $processName has been started from $processPath."
