Write-Output "--ENTER--INTRUSIONS-----"
#Variable to store the count of intrusion
$IntrusionCount =@()
#creating an array of days
$days=@('MON','Tue','Wed','Thu','Fri')
$count=0
$total = 0
$avg = 0
do{
$input = (Read-Host $days[$count])
$IntrusionCount+=$input
$count++
$total+=$input
}
until ($count -ge 5)

Write-Output "------INTRUSIONS--------"
#total intrusion & average
#Calculate average
$avg = $total / 5
$cnt=0
do{
    Write-Host $days[$cnt] $IntrusionCount[$cnt]
    $cnt++
} until ($cnt -ge 5)

Write-Host "Total:" $total
Write-Host "Average:" $avg
