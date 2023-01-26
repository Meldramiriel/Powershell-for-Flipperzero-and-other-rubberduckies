This script uses the Invoke-WebRequest cmdlet to download the contents of a paste from Pastebin using the paste's URL. 
It then stores the contents in a variable called $script. Finally, it uses the Invoke-Expression cmdlet to run the contents of the variable as a PowerShell script.

Make sure to replace <PASTE_ID> with the actual paste id in the URL, so the script can download the correct script.

It's important to note that running scripts from untrusted sources can be a security risk, 
as it can potentially run malicious code on your system. It's recommended to review the script before running it and to use a reputable source for the script.


$url = "https://pastebin.com/raw/<PASTE_ID>"
$script = (Invoke-WebRequest -Uri $url).Content
Invoke-Expression $script