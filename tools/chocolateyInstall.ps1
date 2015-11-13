$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.5.1/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = '28f7db425f7c9ebf59de941cd5e5801a5fd334f1'
$checksum64 = $checksum
$checksumType = 'sha1'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
