$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.21.1/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '46e06d41047c32572aec6ddb0a569f1811fc0c321795f5565452f5d31925902f'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
