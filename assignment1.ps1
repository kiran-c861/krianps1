# Define user information
$user = [pscustomobject]@{ Name = "Eve"; Age = 65 }

# Check if the user is eligible for a senior discount
if ($user.Age -ge 60) {
    Write-Output "$($user.Name) is eligible for a senior discount."
} else {
    Write-Output "$($user.Name) is not eligible for a senior discount."
}

# Additional example with nested conditions
if ($user.Age -ge 60) {
    if ($user.Age -ge 65) {
        Write-Output "$($user.Name) is a senior citizen and eligible for a full discount."
    } else {
        Write-Output "$($user.Name) is eligible for a partial discount."
    }
} else {
    Write-Output "$($user.Name) is not eligible for any discount."
}