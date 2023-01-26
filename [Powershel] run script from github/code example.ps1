#this script will run a script directly from github repo
$url = "https://raw.githubusercontent.com/<USERNAME>/<REPO>/<BRANCH>/<SCRIPT_PATH>"
$script = (Invoke-WebRequest -Uri $url).Content
Invoke-Expression $script