#12/29/2025
<#
carry pouches of gems over 8 bridges to a castle. Get 20 gems to the castle
at each bridge a troll will take 1 gem per pouch as a toll. each pouch can hold a maximum of 10 gems
After crossing the bridge you can redistribute the gems and discard any pouches no longer needed.
What is the minumum number of gems needed at the start with to ensure you have 20 gems remaining to reach the castle.
#>

# Working backwards from the destination
# After each bridge, we can redistribute gems into new pouches optimally
# Before each bridge, we need enough gems to pay the troll (1 gem per pouch)

function Get-RequiredGemsBeforeBridge {
    param(
        [int]$gemsNeededAfter,
        [int]$maxGemsPerPouch = 10
    )
    
    # How many pouches do we need to carry?
    # Each pouch can hold maxGemsPerPouch gems but costs 1 gem toll
    # So each pouch effectively delivers (maxGemsPerPouch - 1) gems after the toll
    # We need: pouchesCarrying * (maxGemsPerPouch - 1) >= gemsNeededAfter
    $pouchesCarrying = [Math]::Ceiling($gemsNeededAfter / ($maxGemsPerPouch - 1))
    
    # Total gems needed before the bridge = gems after + toll
    return $gemsNeededAfter + $pouchesCarrying
}

# Work backwards through all 8 bridges
$gemsNeeded = 20  # Final requirement at castle

for ($bridge = 8; $bridge -ge 1; $bridge--) {
    $gemsNeeded = Get-RequiredGemsBeforeBridge -gemsNeededAfter $gemsNeeded
    "Before Bridge $bridge`: need $gemsNeeded gems"
}

"The minimum number of gems needed at the start: $gemsNeeded"



#9/27/2025
<#
a large number 1000...000. Subtract 974 and the sum of the resultting digits is 638.
How many zeros were in the original number?
#>

# foreach ($numZeros in 1..1000) {
#     $numberString = "1" + ("0" * $numZeros)
#     $number = [bigint]$numberString
#     $result = $number - 974
#     $resultString = $result.ToString()
#     $sumOfDigits = 0
#     foreach ($char in $resultString.ToCharArray()) {
#         $sumOfDigits += [int]$char - 48
#     }
#     if ($sumOfDigits -eq 638) {
#         "The number of zeros is $numZeros"
#     }
# }

$bigNumber = 10000000
$notFound = $true

do {
    $result = $bigNumber - 974
    $resultString = $result.ToString()
    $sumOfDigits = 0
    foreach ($char in $resultString.ToCharArray()) {
        $sumOfDigits += [int]$char - 48
    }
    if ($sumOfDigits -eq 638) {
        $notFound = $false
        "The number of zeros is $($bigNumber.ToString().Length - 1)"
    }
    $bigNumber *= 10
} while ($notFound)

#9/6/2025
<#
two friends are writing a novel on paper. B uses 5 sheets a day. R uses 2 a day.
B starts with 770, R with 530. After how many days will they have the same number of pages?
#>

# $b = 770
# $r = 530
# $day = 0

# while ($b -ne $r ) {
#     $b -= 5
#     $r -= 2
#     $day++
# }

# "It took $day days"



#8/9/2025
<#
Keiko has 5 grandkids. Each is exactly 3 years older than the next youngest
The sum of the ages of totals her own age
How old is Keiko if she is 8x the age of her youngest
#>

# foreach ($youngest in 1..50) {
#     $second = $youngest + 3
#     $third = $second + 3
#     $fourth = $third + 3
#     $fifth = $fourth + 3

#     $totalAges = $youngest + $second + $third + $fourth + $fifth

#     if ($totalAges -eq ($youngest * 8)) {
#         "Keiko is $($youngest * 8)"
#     }

# }


#7/3/2025
# Omar had a nubmer of books. He gage 3/8 of them to Faidia and 1/6 to Marek.
# Then fadia and Marek each gave 3 books back to Omar.
# At that point, Omar had 56 books.
# how many books did he start with?

# foreach ($OmarsOriginalBooks in 1..1000) {
#     $OmarsBooks = $OmarsOriginalBooks
#     $Faidia = $OmarsBooks * (3 / 8)
#     $OmarsBooks -= $Faidia
#     $Marek = $OmarsBooks / 6
#     $OmarsBooks -= $Marek
#     $OmarsBooks += 6
#     if ($OmarsBooks -eq 56) {
#         "He started with $OmarsOriginalBooks books"
#     }
# }

# 2/10/2025
# 1300 gallons is 2% acid
# how many gallons of acid to add for 9%

# $totalGallons = 1300
# $totalAcidGallons = 1300 * .02

# foreach ($gallonsOfAcid in 1..1000) {
#     $totalGallons++
#     $totalAcidGallons ++
#     $acidPercentage = $totalAcidGallons / $totalGallons
#     if ($acidPercentage -ge .09) {
#         "You've added $gallonsOfAcid"
#         break
#     }
# }

#1/1/2025
# Find the days in 2025 where the first four digits of the data 
# add up to the two digits of the year
# e.g 10/24/2025 is a match because 1+0+2+4 = 2+5

# function Sum-Digits {
#     param (
#         [int]$number
#     )
#     $sum = 0
#     $numString = $number.ToString()
#     foreach ($char in $numString.ToCharArray()) {
#         $sum += [int]$char - 48
#     }
#     return $sum
# }


# $day = [datetime]"1/1/2025"
# $numberOfSumDays = 0
# foreach ($i in 1..365) {
#     # $sum = $day.Month + $day.Day
#     $daySum = Sum-Digits -number $day.Day
#     $monthSum = Sum-Digits -number $day.Month

#     if ($daySum + $monthSum -eq 7) {
#         "It's $day"
#         $numberOfSumDays++
#     }
#     $day = $day.AddDays(1)
# }
# "There are $numberOfSumDays in 2025"


# 12/29/2024
# At a point in a 280 mile trip 1/4 of the distance already traveled is
# equal to 1/3 of the distance tom= come
# how man more miles of the trip are there?

# foreach ($miles in 1..280) {
#     if ($miles / 4 -eq (280 - $miles) / 3) {
#         "It's $(280 - $miles)"
#     }
# }

#11/3/2024
#Find the only 3 digit number that's 79 times the sum of its digits

# foreach ($number in 111..999) {
#     $numString = $number.ToString()
#     $numCharArray = $numString.ToCharArray()
#     $summedDigits = 0
#     foreach ($numChar in $numCharArray) {
#         $numInteger = ([int]$numChar) - 48
#         $summedDigits += $numInteger
#     }
#     if ($number -eq $summedDigits * 79) {
#         "It's $number"
#     }
# }

# 9/15/2024
# Zajac had 3x the $$ of Hiroko. Zoroko gave $28 to Hiroko now H has 5x $$ as Zajac

# foreach ($hiroko in 1..1000) {
#     $zajac = $hiroko * 3
#     $newZajac = $zajac - 28
#     $newHiroko = $hiroko + 28
#     if ($newHiroko -eq ($newZajac * 5)) {
#         " Hiroko: $hiroko Zajac: $zajac"
#     }
# }

# 8/12/2024
# A number increased by 20% and the the result decreased by 20%. The result is 10 less than the original number
# foreach ($originalNumber in 1..500) {
#     $newNumber = $originalNumber * 1.2
#     $finalNumber = $newNumber * .8
    
#     if ($finalNumber -eq $originalNumber - 10) {
#         "It's $originalNumber"
#     }
# }

# 6/17/2024

# foreach ($javierNow in 1..100) {
#     $eduardoNow = $javierNow * 6
#     $javierIn12 = $javierNow + 12
#     $eduardoIn12 = $eduardoNow + 12

#     if ($eduardoIn12 -eq ($javierIn12 * 2)) {
#         "Javier: $javierNow"
#         "Eduardo: $eduardoNow"
#     }
# }

# 5/18/2024

# foreach($demoninator in 1..100) {
#     $firstNumber = ((9/5) * (9/$demoninator))
#     $secondNumber = ((9/5) + (9/$demoninator))

#     if ($firstNumber -eq $secondNumber) {
#         "It's $demoninator!"
#     }
# }

# 4/28/2024
# The clock starts at 10:00 am
# and is 4 minutes slow. What time does it say
# at 1:02 pm

# $startTime = [datetime]"10:00 am"
# $newTime = $startTime
# foreach ($realHour in 1..720) {
#     $newTime = $newTime.AddSeconds(56)
#     if ($newTime -gt [DateTime]"12:58 pm") {
#         "here"
#     }
#     if ($newTime -eq [datetime]"1:02 pm") {
#         $realTime = $startTime.AddMinutes($realHour)
#         "the real time is $realTime"
#     }
# }


# 2/17/2024
# If the digit 3 is written at the right-hand end of a certain number
# that number is increased by 7329. find the number

# "starting"
# foreach ($n in 1..100000) {
#     $nString = $n.ToString()
#     $nString = $nString + "3"
#     $newNumber = [int]$nString
#     # "$($n), $($newNumber), ($($n+7329))"
#     if ($newNumber - $n -eq 7329) {
#         "It's $n!"
#     }
# }
# "finished"


# foreach($n in 1..100) {
#     $remainder1 = 36 % $n
#     $remainder2 = 70 % $n
#     $remainder3 = 121 % $n
#     if ($remainder1 -eq $remainder2 -and $remainder1 -eq $remainder3) {
#         "The number is $n"
#     }
# }