$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.12.0-rc2/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '4de1bec142705060fcc6b9197caff3d7'
$checksum64 = $checksum
$checksumType = 'md5'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
