$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.12.0/docker-compose-Windows-x86_64.exe'
$url64 = $url
$checksum = 'a29e4bd3050a4318a90fe0db16c05d342b89535a41a4dc37db08946eb48a9439'
$checksum64 = $checksum
$checksumType = 'sha256'
$checksumType64 = $checksumType

$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Get-ChocolateyWebFile $packageName $file $url $url64 $checksum $checksum64 $checksumType $checksumType64
