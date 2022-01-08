#Install MSOL Module
Install-Module MSOnline
$credential = Get-credential
Connect-MsolService -Credential $credential
Get-MsolUser -MaxResults 2000 | Select-Object UserPrincipalName, BlockCredential, DisplayName, isLicensed, License | Export-Csv -Path c:\users\sysadmin.TOS\desktop\aduserexport.csv
