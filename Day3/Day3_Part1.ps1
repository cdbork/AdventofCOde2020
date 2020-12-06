$AllInput=Get-Content C:\AOC\Day3\Day3_input.txt
#$AllInput=Get-Content C:\AOC\Day3\Day3_test.txt
$lineCount=1
$Position=1
$TreesFound=0

foreach ($Line in $AllInput) {
    if(($lineCount%2) -ne 0){
        $Thing=$Line[([int]$Position-1)]
        if ($Thing -eq "#"){
            $TreesFound++
        }
        $Position=(($Position+1)%31)
    }
    $lineCount++
}
$TreesFound