$AllInput=Get-Content C:\GitHub\AOC2020\Day6\Day6_Input.txt
#$AllInput=Get-Content C:\GitHub\AOC2020\Day6\Day6_Test.txt

$CurrentGroup
$CurrentGroupCount=0
$GroupYesTotal=0

Foreach ($Line in $AllInput) {
if ($Line -ne "") {
    $CurrentGroup=$CurrentGroup+$Line
    $CurrentGroupCount++
}
else {
    #$CurrentGroup
    $charArray=$currentGroup.ToCharArray()
    #Write-Host "Group Size: $CurrentGroupCount"
    $GroupedChar=($CharArray | group)
    Foreach($thing in $GroupedChar)
    {
        if($thing.Count -eq $CurrentGroupCount) { $GroupYesTotal++ }
    }
    #$GroupYesTotal+=(($CharArray | group) | Measure-Object)
    $CurrentGroup=""
    $CurrentGroupCount=0
}
}
$GroupYesTotal