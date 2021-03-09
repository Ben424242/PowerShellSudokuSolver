function show-board() {
    param (
        $board
    )

    for ($y = 0; $y -lt 9; $y++) {
        $outputLine = ""
        for ($x = 0; $x -lt 9; $x++) {
            if ($x % 3 -eq 0) {
                $outputLine += "|"
            }
            $outputLine += $board[$y][$x]
            $outputLine += " "
        }


        if ($y % 3 -eq 0) {
            "- - - - - - - - - -"
        }
        $outputLine
    }

}

function solve-puzzle {

    param (
        $board
    )

    $foundCell = find-empty -board $board

    if ($null -eq $foundCell) {
        return $true
    }
    else {
        $row = $foundCell[1]
        $col = $foundCell[0]
    }

    for ($i = 1; $i -lt 10; $i++) {
        if (validate-cell -board $board -num $i -cell $foundCell) {
            $board[$row][$col] = $i
            if (solve-puzzle -board $board) {
                return $true
            }

            $board[$row][$col] = 0
        }
    }

    return $false
}

function validate-cell {
    param (
        $board,
        $num,
        $cell
    )

    #validate the row   
    for ($x = 0; $x -lt 9; $x++ ) {
        if ($board[$cell[1]][$x] -eq $num -and $cell[0] -ne $x) {
            return $false
        }
    }

    #validate the column   
    for ($y = 0; $y -lt 9; $y++ ) {
        if ($board[$y][$cell[0]] -eq $num -and $cell[1] -ne $y) {
            return $false
        }
    }

    #check box
    $box_x = [math]::floor($cell[0] / 3)
    $box_y = [math]::floor($cell[1] / 3)

    for ($y = $box_y * 3; $y -lt $box_y * 3 + 2 ; $y++ ) {
        for ($x = $box_x * 3; $x -lt $box_x * 3 + 2; $x++ ) {
            if ($board[$y][$x] -eq $num -and ($x -ne $cell[0] -and $y -ne $cell[1])) {
                return $false
            }
        }
    }
    return $true
}

function find-empty {
    param (
        $board
    )

    for ($y = 0; $y -lt 9; $y++) {
        for ($x = 0; $x -lt 9; $x++) {
            if ($board[$y][$x] -eq 0) {
                return $x, $y
            }
        }
    }
    return $null
}



$puzzle = @(
    @(0, 0, 0, 0, 0, 9, 2, 0, 8),
    @(5, 0, 0, 8, 0, 2, 7, 6, 0),
    @(0, 8, 0, 6, 0, 0, 1, 0, 0),
    @(0, 0, 2, 0, 8, 0, 0, 1, 0),
    @(0, 9, 0, 0, 7, 0, 0, 5, 0),
    @(0, 3, 0, 0, 9, 0, 8, 0, 0),
    @(0, 0, 5, 0, 0, 8, 0, 2, 0),
    @(0, 1, 8, 9, 0, 5, 0, 0, 7),
    @(6, 0, 3, 1, 0, 0, 0, 0, 0)
)

show-board -board $puzzle
solve-puzzle -board $puzzle
"---------------------------------------------"
""
show-board -board $puzzle