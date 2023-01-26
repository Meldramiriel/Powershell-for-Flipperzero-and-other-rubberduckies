This script uses the Invoke-WebRequest cmdlet to download the contents of a script file from ControlC using the raw file URL. 
It then stores the contents in a variable called $script. Finally, it uses the Invoke-Expression cmdlet to run the contents of the variable as a PowerShell script.

Make sure to replace <HASH> with the actual value of the script hash in the URL, so the script can download the correct script.

It's important to note that running scripts from untrusted sources can be a security risk, as it can potentially run malicious 
code on your system. It's recommended to review the script before running it and to use a reputable source for the script.

Also, make sure that the system has internet connectivity and can access controlc.com to properly run the script.

Please note that ControlC is a third-party service and the URL format or availability of the service might change over time.


$url = "https://www.controlc.com/<HASH>"
$script = (Invoke-WebRequest -Uri $url).Content
Invoke-Expression $script