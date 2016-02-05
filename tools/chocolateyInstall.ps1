$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.6.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '76d4c2ed732285f73f3b9f650e7fb894'
$checksum64 = $checksum
$checksumType = 'md5'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
