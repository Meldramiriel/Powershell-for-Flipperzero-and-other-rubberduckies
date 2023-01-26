# Check if WSL is installed
if (!(Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux)) {
    # Install WSL
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
} else {
    # Update WSL
    wsl --update
}
# Restart WSL
wsl --shutdown