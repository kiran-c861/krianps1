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