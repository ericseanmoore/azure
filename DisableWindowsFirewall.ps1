# This small snippet disables Windows Firewall Profiles 
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

Get-Process | Out-File -FilePath C:\Process.txt
