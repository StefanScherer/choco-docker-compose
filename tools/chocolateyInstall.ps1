$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.19.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '52bb70f8909c329133239621edfab470ea8c73525ea75b138b933190f8f5a0dd'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
