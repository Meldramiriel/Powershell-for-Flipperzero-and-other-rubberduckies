This script first checks if WSL is installed on the system, and if not, it installs it. If WSL is already installed, the script updates all installed distributions using the wsl --update command. Finally, the script restarts all distribution by running the command wsl --shutdown so that the update can take effect.

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