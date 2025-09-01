### Example 1: Working with Objects ###
In this example, we'll create a list of user objects, each containing properties like Name, Age, and Department. We'll then perform some operations on these objects, such as filtering and displaying information.
```
# Define a list of users as custom objects
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

```
Explanation:
Creating Custom Objects: [pscustomobject] is used to create a list of user objects with properties Name, Age, and Department.
Displaying Data: Format-Table is used to format the output as a table.
Filtering Objects: Where-Object filters users based on the department.
Sorting and Selecting: Sort-Object and Select-Object are used to find the oldest user.

### Example 2: Decision Control (Conditional Statements) ###
In this example, we'll use conditional statements to check a user's age and print a message based on their eligibility for a senior discount.

```
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
```

Explanation:
Using if-else Statements: The script checks if the user’s age is greater than or equal to 60 to determine eligibility for a senior discount.
Nested Conditions: It further checks if the user is 65 or older to determine if they qualify for a full discount.

### Example 3: Working with Objects and Collections ###
In this example, we'll work with a collection of computer systems, retrieve their details, and perform some operations like filtering based on the status and sorting.

```
# Define a list of computer systems as custom objects
$computers = @(
    [pscustomobject]@{ Name = "Server1"; Status = "Online"; LastBoot = (Get-Date).AddDays(-10) }
    [pscustomobject]@{ Name = "Server2"; Status = "Offline"; LastBoot = (Get-Date).AddDays(-5) }
    [pscustomobject]@{ Name = "Server3"; Status = "Online"; LastBoot = (Get-Date).AddDays(-1) }
    [pscustomobject]@{ Name = "Server4"; Status = "Offline"; LastBoot = (Get-Date).AddDays(-20) }
)

# Display all computer systems
Write-Output "All Computers:"
$computers | Format-Table -AutoSize

# Filter online computers
$onlineComputers = $computers | Where-Object { $_.Status -eq "Online" }

Write-Output "`nOnline Computers:"
$onlineComputers | Format-Table -AutoSize

# Find the computer that was booted most recently
$recentlyBooted = $computers | Sort-Object LastBoot -Descending | Select-Object -First 1

Write-Output "`nMost Recently Booted Computer:"
$recentlyBooted | Format-Table -AutoSize
```
Explanation:
Defining Collections: We create a list of computer systems with properties Name, Status, and LastBoot.
Filtering: We filter out computers that are "Online."
Sorting: We sort computers by the LastBoot date to find the most recently booted one.
Example 4: Using Decision Control for Error Handling
In this example, we'll use decision control to check if a specified file exists and handle cases where the file might be missing.

```
# Specify the file path
$filePath = "C:\path\to\your\file.txt"

# Check if the file exists
if (Test-Path $filePath) {
    Write-Output "The file '$filePath' exists."
    # Read the file content
    $fileContent = Get-Content $filePath
    Write-Output "`nFile Content:"
    Write-Output $fileContent
} else {
    Write-Output "The file '$filePath' does not exist."
    # Optionally create a new file or handle the error
    New-Item -Path $filePath -ItemType File -Force
    Write-Output "A new file has been created at '$filePath'."
}
```

Explanation:
File Existence Check: Test-Path is used to check if a file exists.
Handling Missing Files: If the file does not exist, the script creates a new file.

### Example 5: Using Decision Control with Loops ###
In this example, we'll use a loop to iterate through a list of users and apply different actions based on their role.

```
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
```

Explanation:
Using Loops: We use a foreach loop to iterate over each user in the list.
Decision Control with Switch: The switch statement is used to apply actions based on the user's role.
These additional examples cover a range of PowerShell scripting techniques, including handling collections, error handling, and using loops with decision control. 





