param($domainName, $netBiosName, $safeModeAdministratorPassword)

$securePassword = ConvertTo-SecureString -String $safeModeAdministratorPassword

#Create Domain Controller

#Install Roles and Features
Install-WindowsFeature –Name AD-Domain-Services -IncludeManagementTools

Install-ADDSForest `
-SafeModeAdministratorPassword $securePassword `
-DomainName $domainName `
-CreateDnsDelegation:$false ` 
-DatabasePath "C:\Windows\NTDS" ` 
-DomainMode "7" ` 
-DomainNetbiosName $netBiosName ` 
-ForestMode "7" ` 
-InstallDns:$true ` 
-LogPath "C:\Windows\NTDS" ` 
-NoRebootOnCompletion:$False ` 
-SysvolPath "C:\Windows\SYSVOL" ` 
-Force:$true