# This small snippet disables Windows Firewall Profiles 
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
