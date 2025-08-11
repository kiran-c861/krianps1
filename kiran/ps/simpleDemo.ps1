$variable1 = 10
$variable2 = 20

# Sum of variable1 and variable2
# $sum = $variable1 + $variable2

# Prompt user for input
$number1 = [int](Read-Host "Enter the number1:")
$number2 = [int](Read-Host "Enter the number2:")

# Add user inputs
$result = $number1 + $number2
Write-Host ("Sum is $result")

# Comparison
if ($variable1 -lt $variable2) {
    Write-Host "$variable2 is greater than $variable1"
}
elseif ($variable1 -gt $variable2) {
    Write-Host "$variable1 is greater than $variable2"
}
else {
    Write-Host "Both numbers are equal"
}
