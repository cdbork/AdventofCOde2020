$AllInput=Get-Content C:\AOC\Day2\Day2_input.txt
#$AllInput=Get-Content C:\AOC\Day2\Test_input.txt
$ValidPWD=0
Foreach ($Line in $AllInput) {
    $Broken=$Line.Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)
    $Nums=$Broken[0]
    $Match=$Broken[1]
    $Match=$Match[0]
    $Pwd=$Broken[2]
    $Values=$Nums.Split("-",[System.StringSplitOptions]::RemoveEmptyEntries)
    $FirstNum=$Values[0]
    $SecondNum=$Values[1]
#    Write-Host "First Number: $FirstNum"
#    Write-Host "Second Number: $SecondNum"
#    Write-Host "Matching: $Match"
#    Write-Host "Password: $Pwd"
    $NumOfMatch=($Pwd.ToCharArray() -eq $Match).count
    if(($NumOfMatch -ge $FirstNum) -and ($NumOfMatch -le $SecondNum)) {
        $ValidPWD++
    }
}
$ValidPWD