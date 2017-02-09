$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.11.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '15faaf5c5aee0db7c1eda4568929d3d5'
$checksum64 = $checksum
$checksumType = 'md5'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
