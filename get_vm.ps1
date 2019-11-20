$a = Get-Vm | Get-Harddisk | Where-Object {$_.Filename -like "*SSD_RAID10*"} | Select Filename, CapacityGB
$size = 0
$a | % {
$_.Filename
$_.CapacityGB
$size += $_.CapacityGB
}
$size