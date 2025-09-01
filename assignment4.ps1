# Define a list of users with their roles
$users = @(
    [pscustomobject]@{ Name = "Alice"; Role = "Admin" }
    [pscustomobject]@{ Name = "Bob"; Role = "User" }
    [pscustomobject]@{ Name = "Charlie"; Role = "Guest" }
    [pscustomobject]@{ Name = "Diana"; Role = "User" }
)

# Iterate through each user and apply different actions based on their role
foreach ($user in $users) {
    switch ($user.Role) {
        "Admin" {
            Write-Output "$($user.Name) has full administrative privileges."
        }
        "User" {
            Write-Output "$($user.Name) has regular user access."
        }
        "Guest" {
            Write-Output "$($user.Name) has limited guest access."
        }
        default {
            Write-Output "$($user.Name) has an unknown role."
        }
    }
}