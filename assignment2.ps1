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