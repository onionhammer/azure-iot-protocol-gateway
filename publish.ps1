Param(
 [string]$Version
)

# Clean existing nupkg
Get-ChildItem *.nupkg | Remove-Item

# Build package
.\package.ps1 -version $Version

# Publish
Get-ChildItem *.nupkg | foreach-object {
    ./nuget push -Source "PowerCommandCloud" -ApiKey VSTS $_.Name
}
