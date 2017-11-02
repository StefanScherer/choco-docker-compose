$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.17.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '35a3365f403dbedb175d6c0f7d971bd497fa64915d44442aa694c732f454ad94'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
