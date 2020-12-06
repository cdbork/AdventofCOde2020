$AllInput=Get-Content C:\GitHub\AOC2020\Day6\Day6_Input.txt
#$AllInput=Get-Content C:\GitHub\AOC2020\Day6\Day6_Test.txt

$CurrentGroup
$GroupYesTotal=0

Foreach ($Line in $AllInput) {
if ($Line -ne "") {
    $CurrentGroup=$CurrentGroup+$Line
}
else {
    $CurrentGroup
    $charArray=$currentGroup.ToCharArray()
    $GroupYesTotal+=(($CharArray | group) | Measure-Object).count
    $CurrentGroup=""
}
}
$GroupYesTotal