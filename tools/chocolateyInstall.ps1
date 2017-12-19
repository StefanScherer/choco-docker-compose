$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.18.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '9c110e69aac18364f1fb10c99d26318096ebc4cf4bf5fe7931a38cac61b2eb45'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
