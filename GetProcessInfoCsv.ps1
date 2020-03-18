$ps = Get-Process

$psfiltered = $ps | Where-Object WorkingSet -gt 2mb

$psfiltered | out-file processinfo.csv

Get-Content processinfo.csv

