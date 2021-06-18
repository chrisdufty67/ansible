#Count Uninstalled Updates
#Author: Sean Bradley
#License: BSD-3-Clause-Attribution
#Attribution: https://zabbixtutorials.seanwasere.com/powershell-windows-updates/
[Int]$Count = 0
$Searcher = new-object -com "Microsoft.Update.Searcher"
$Searcher.Search("IsAssigned=1 and IsHidden=0 and IsInstalled=0").Updates | ForEach-Object { $Count++ }
Write-Host $Count