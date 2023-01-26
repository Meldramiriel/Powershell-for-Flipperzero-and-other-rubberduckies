#this script will run a script directly from paste.bingner.com
$url = "https://paste.bingner.com/<HASH>"
$script = (Invoke-WebRequest -Uri $url -UseBasicParsing).Content
Invoke-Expression $script