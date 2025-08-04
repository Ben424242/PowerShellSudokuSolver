#7/3/2025
# Omar had a nubmer of books. He gage 3/8 of them to Faidia and 1/6 to Marek.
# Then fadia and Marek each gave 3 books back to Omar.
# At that point, Omar had 56 books.
how many books did he start with?

foreach ($OmarsOriginalBooks in 1..1000) {
    $OmarsBooks = $OmarsOriginalBooks
    $Faidia = $OmarsBooks * (3/8)
    $OmarsBooks -= $Faidia
    $Marek = $OmarsBooks / 6
    $OmarsBooks -= $Marek
    $OmarsBooks += 6
    if ($OmarsBooks -eq 56) {
        "He started with $OmarsOriginalBooks books"
    }
}

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