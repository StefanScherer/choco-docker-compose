"Running tests"
$ErrorActionPreference = "Stop"
$version = $env:APPVEYOR_BUILD_VERSION -replace('\.[^.\\/]+$')

"TEST: Version $version in docker-compose.nuspec file should match"
[xml]$spec = Get-Content docker-compose.nuspec
if ($spec.package.metadata.version.CompareTo($version)) {
  Write-Error "FAIL: rong version in nuspec file!"
}

"TEST: Package should contain only install script"
Add-Type -assembly "system.io.compression.filesystem"
$zip = [IO.Compression.ZipFile]::OpenRead("$pwd\docker-compose.$version.nupkg")
if ($zip.Entries.Count -ne 5) {
  Write-Error "FAIL: Wrong count in nupkg!"
}
$zip.Dispose()

"TEST: Installation of package should work"
. choco install -y docker-compose -source .

"TEST: Version of binary should match"
. docker-compose --version
if (-Not $(docker-compose --version).Contains("version: $version")) {
  Write-Error "FAIL: Wrong version of docker-compose installed!"
}

"TEST: Uninstall show remove the binary"
. choco uninstall docker-compose
try {
  . docker-compose
  Write-Error "FAIL: docker-compose binary still found"
} catch {
  Write-Host "PASS: docker-compose not found"
}

"TEST: Finished"
