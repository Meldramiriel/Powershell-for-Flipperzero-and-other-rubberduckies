#this script will run a script directly from hastebin.com
$url = "https://hastebin.com/raw/<HASH>"
$script = (Invoke-WebRequest -Uri $url -UseBasicParsing).Content
Invoke-Expression $script