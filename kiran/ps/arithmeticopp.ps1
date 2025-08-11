
$a = Read-Host "Enter the first number"
if (-not ($a -as [double])) {
    Write-Host "Invalid number: $a"
    exit
}
$a = [double]$a
$b = Read-Host "Enter the second number"
if (-not ($b -as [double])) {
    Write-Host "Invalid number: $b"
    exit
}
$b = [double]$b
$op = Read-Host "Enter the operation (+, -, *, /, %)"
switch ($op) {
    "+" { $result = $a + $b }
    "-" { $result = $a - $b }
    "*" { $result = $a * $b }
    "/" {
        if ($b -eq 0) {
            Write-Host "Error: Division by zero"
            exit
        }
        $result = $a / $b
    }
    "%" {
        if ($b -eq 0) {
            Write-Host "Error: Division by zero (modulus)"
            exit
        }
        $result = $a % $b
    }
    default {
        Write-Host "Invalid operation: $op"
        exit
    }
}

# Display the result
Write-Host "`nResult: $a $op $b = $result"
