$users = @(
    [pscustomobject]@{ Name = "Alice"; Age = 30; Department = "HR" }
    [pscustomobject]@{ Name = "Bob"; Age = 25; Department = "IT" }
    [pscustomobject]@{ Name = "Charlie"; Age = 35; Department = "Finance" }
    [pscustomobject]@{ Name = "Diana"; Age = 28; Department = "Marketing" }
)

# Display all users
Write-Output "All Users:"
$users | Format-Table -AutoSize

# Filter users by Department 'IT'
$itUsers = $users | Where-Object { $_.Department -eq "IT" }

Write-Output "`nUsers in IT Department:"
$itUsers | Format-Table -AutoSize

# Find the oldest user
$oldestUser = $users | Sort-Object Age -Descending | Select-Object -First 1

Write-Output "`nOldest User:"
$oldestUser | Format-Table -AutoSize