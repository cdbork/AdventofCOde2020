$AllInput=Get-Content C:\AOC\Day4\Day4_input.txt
#s$AllInput=Get-Content C:\AOC\Day4\Day4_test.txt

$CurrentPassport=""
$ValidPassports=0

Foreach ($Line in $AllInput) {
if ($Line -ne "") {
    $CurrentPassport=$CurrentPassport+" "+$Line
}
else {
    #$CurrentPassport
#    if ($CurrentPassport | Select-String -Pattern 'byr:' -CaseSensitive -SimpleMatch) {
#        "found"
#    }

    if( ($CurrentPassport | Select-String -Pattern 'iyr:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'byr:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'eyr:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'hgt:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'hcl:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'ecl:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'pid:' -CaseSensitive -SimpleMatch) )
    {
        Write-Host "Found in $CurrentPassport"
        $ValidPassports++
    }
    $CurrentPassport=""  
}

}
$ValidPassports