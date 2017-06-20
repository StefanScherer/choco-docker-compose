$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.14.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = 'bfb8058aac1bf6f8b0e44b70e69dc89d89e4493a3ba43d3ec46b3aad54512da8'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
