#$AllInput=Get-Content C:\AOC\Day4\Day4_input.txt
$AllInput=Get-Content C:\AOC\Day4\Day4_test.txt

$CurrentPassport=""
$ValidPassports=0

Foreach ($Line in $AllInput) {
if ($Line -ne "") {
    $CurrentPassport=$CurrentPassport+" "+$Line
}
else {
    #$CurrentPassport

    #Checking byr
    if ($CurrentPassport | Select-String -Pattern 'byr:' -CaseSensitive -SimpleMatch) {
       $foundString=($CurrentPassport | Select-String -Pattern 'byr:(\w+)'| foreach {$_.Matches.Groups[0].Value} )
       $length = $foundString.length
       $year=$foundString.substring($length -4)
       Write-Host "byr found: $year"
       if ( ([int]$year -ge 1920) -and ([int]$year -le 2002) )
       {
            
            #Checking iyr
            if ($CurrentPassport | Select-String -Pattern 'iyr:' -CaseSensitive -SimpleMatch) {
               $foundString=($CurrentPassport | Select-String -Pattern 'iyr:(\w+)'| foreach {$_.Matches.Groups[0].Value} )
               $length = $foundString.length
               $year=$foundString.substring($length -4)
               Write-Host "iyr found: $year"
               if ( ([int]$year -ge 2010) -and ([int]$year -le 2020) )
               {
                    Write-Host "iyr $year is valid"
                }
            }

       }
    }

 #   if( ($CurrentPassport | Select-String -Pattern 'iyr:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'byr:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'eyr:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'hgt:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'hcl:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'ecl:' -CaseSensitive -SimpleMatch) -and ($CurrentPassport | Select-String -Pattern 'pid:' -CaseSensitive -SimpleMatch) )
 #   {
 #       Write-Host "Found in $CurrentPassport"
 #       $ValidPassports++
 #   }
    $CurrentPassport=""  
    $year=""
}

}
$ValidPassports