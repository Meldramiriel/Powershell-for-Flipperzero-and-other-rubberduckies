This script uses the Invoke-WebRequest cmdlet to download the contents of a script file 
from GitHub using the raw file URL. It then stores the contents in a variable called $script. 
Finally, it uses the Invoke-Expression cmdlet to run the contents of the variable as a PowerShell script.

Make sure to replace <USERNAME>, <REPO>, <BRANCH>, and <SCRIPT_PATH> with the actual values of 
the script location on GitHub, so the script can download the correct script.

Again, as I previously mentioned, running scripts from untrusted sources can be a security risk, 
as it can potentially run malicious code on your system. It's recommended to review the script 
before running it and to use a reputable source for the script.

Also, make sure that the system has internet connectivity and can access github.com to properly 
run the script.


$url = "https://raw.githubusercontent.com/<USERNAME>/<REPO>/<BRANCH>/<SCRIPT_PATH>"
$script = (Invoke-WebRequest -Uri $url).Content
Invoke-Expression $script