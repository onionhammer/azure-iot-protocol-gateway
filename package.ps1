Param(
 [string]$version
)

Get-ChildItem *.nupkg | Remove-Item

./nuget pack .\src\ProtocolGateway.Core\ProtocolGateway.Core.csproj -version $version
./nuget pack .\src\ProtocolGateway.IotHubClient\ProtocolGateway.IotHubClient.csproj -version $version
./nuget pack .\src\ProtocolGateway.Providers.CloudStorage\ProtocolGateway.Providers.CloudStorage.csproj -version $version