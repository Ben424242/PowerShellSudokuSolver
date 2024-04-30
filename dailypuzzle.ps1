# 4/28/2024
# The clock starts at 10:00 am
# and is 4 minutes slow. What time does it say
# at 1:02 pm

$startTime = [datetime]"10:00 am"
$newTime = $startTime
foreach ($realHour in 1..720) {
    $newTime = $newTime.AddSeconds(56)
    if ($newTime -gt [DateTime]"12:58 pm") {
        "here"
    }
    if ($newTime -eq [datetime]"1:02 pm") {
        $realTime = $startTime.AddMinutes($realHour)
        "the real time is $realTime"
    }
}


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