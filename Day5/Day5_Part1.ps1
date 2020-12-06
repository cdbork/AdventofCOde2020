$AllInput=Get-Content C:\AOC\Day5\Day5_input.txt
#$AllInput=Get-Content C:\AOC\Day5\Day5_test.txt
$highest=0

Foreach ($Line in $AllInput) {
    $seatID=0
    $row=$Line.Substring(0,7)
    $column=$Line.Substring(7,3)
    $row=$row -replace "F","0" -replace "B","1"
    $column=$column -replace "L","0" -replace "R","1"
    $row=[Convert]::ToInt32($row,2)
    $column=[Convert]::ToInt32($column,2)
    $seatID=($row*8)+$column
    if($seatID -gt $highest)
    {
        $highest=$seatID
    }
}
$highest