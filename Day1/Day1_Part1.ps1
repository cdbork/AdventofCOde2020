$Numbers1=Get-Content C:\AOC\Day1\Day1_input.txt
$Numbers2=Get-Content C:\AOC\Day1\Day1_input.txt
#$Numbers1=Get-Content C:\AOC\Day1\Test_input.txt
#$Numbers2=Get-Content C:\AOC\Day1\Test_input.txt


foreach ($NumA in $Numbers1) {
    foreach ($NumB in $Numbers2) {
        $Added=[int]$NumA+[int]$NumB
        if ($Added -eq 2020)
        {
            $Result=[int]$NumA*[int]$NumB
            $Result
            exit
        }
    }
}