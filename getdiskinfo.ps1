$disk1 = Get-Disk 


Get-Disk  ForEach-Object { $_ | Get-StorageReliabilityCounter | Format-List }

$OutputVariable = Get-PhysicalDisk -FriendlyName "KINGSTON SA400S37120G"
$OutputVariable

#| ForEach-Object { $_ | Get-PhysicalDisk -FriendlyName }

Get-PhysicalDisk -FriendlyName "KINGSTON SA400S37120G" | Get-StorageReliabilityCounter | Format-List

Get-StorageReliabilityCounter KINGSTON SA400S37120G
ForEach-Object { $_ | Get-StorageReliabilityCounter | Format-List } | Export-Csv -Path C:\Users\sysadmin.TOS\Desktop\diskinfo.csv