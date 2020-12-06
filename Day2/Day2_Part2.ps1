#This whole thing is a nope.... 321 apparently?

$AllInput=Get-Content C:\AOC\Day2\Day2_input.txt
#$AllInput=Get-Content C:\AOC\Day2\Test_input.txt
$ValidPWD=0
$Checked=0
$NotChecked=0
$NotValid=0
Foreach ($Line in $AllInput) {
    $Broken=$Line.Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)
    $Nums=$Broken[0]
    $Match=$Broken[1]
    $Match=$Match[0]
    $Pwd=$Broken[2]
    $Values=$Nums.Split("-",[System.StringSplitOptions]::RemoveEmptyEntries)
    $FirstNum=$Values[0]
    $SecondNum=$Values[1]
    $ValueA=$Pwd[([int]$FirstNum-1)]
    $ValueB=$Pwd[([int]$SecondNum-1)]
    Write-Host "$ValueA,$ValueB"
    if ($ValueA -ne $ValueB){
        $Checked++
        if (($valueA -eq $Match) -or ($valueA -eq $Match)) {
            $ValidPWD++
            #Write-Host "$Line - IS Valid"
        }
        else {
            #Write-Host "$Line - NOT Valid"
            $NotValid++
        }
    }
    else{
        $NotChecked++
    }   
}
$Checked
$NotChecked
$NotValid
$ValidPWD