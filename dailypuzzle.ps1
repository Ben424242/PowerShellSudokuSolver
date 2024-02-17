# 2/17/2024
# If the digit 3 is written at the right-hand end of a certain number
# that number is increased by 7329. find the number

"starting"
foreach ($n in 1..100000) {
    $nString = $n.ToString()
    $nString = $nString + "3"
    $newNumber = [int]$nString
    # "$($n), $($newNumber), ($($n+7329))"
    if ($newNumber - $n -eq 7329) {
        "It's $n!"
    }
}
"finished"


# foreach($n in 1..100) {
#     $remainder1 = 36 % $n
#     $remainder2 = 70 % $n
#     $remainder3 = 121 % $n
#     if ($remainder1 -eq $remainder2 -and $remainder1 -eq $remainder3) {
#         "The number is $n"
#     }
# }