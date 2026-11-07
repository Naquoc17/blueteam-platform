# Get all service and export to csv
Get-Service | Export-Csv -Path baseline/service.csv -NoClobber

# Compare services in the past and now
Diff -reference (Import-Csv -Path baseline/service.csv) -difference (Get-Service) -Property Name
