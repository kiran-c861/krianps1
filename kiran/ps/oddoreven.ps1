
$number = Read-Host "Enter a number"
[int]$number = $number
if ($number % 2 -eq 0) {
    Write-Host "The number is even."
}
else {
    Write-Host "The number is odd."
}
