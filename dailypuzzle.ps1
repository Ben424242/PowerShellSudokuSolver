#11/3/2024
#Find the only 3 digit number that's 79 times the sum of its digits

foreach ($number in 111..999) {
    $numString = $number.ToString()
    $numCharArray = $numString.ToCharArray()
    $summedDigits = 0
    foreach ($numChar in $numCharArray) {
        $numInteger = ([int]$numChar) - 48
        $summedDigits += $numInteger
    }
    if ($number -eq $summedDigits * 79) {
        "It's $number"
    }
}

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