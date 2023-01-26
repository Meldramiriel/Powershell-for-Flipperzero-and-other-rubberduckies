#this script will run a script directly from pastebin
$url = "https://pastebin.com/raw/<PASTE_ID>"
$script = (Invoke-WebRequest -Uri $url).Content
Invoke-Expression $script